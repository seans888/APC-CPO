<?php
require_once 'components/get_max_attachment_size.php';
$existing_file_upload_control_name = 'existing_' . $file_upload_control_name;

for($a=0; $a<$$mf_upload_counter_name; ++$a)
{
    $empty_previous_file = FALSE;

    $orig_filename = basename(str_replace("\0",'',($_FILES[$file_upload_control_name]['name'][$a])));

    if(empty($_FILES[$file_upload_control_name]['name'][$a]))
    {
        $extension = pathinfo($_POST[$existing_file_upload_control_name][$a], PATHINFO_EXTENSION);
    }
    else
    {
        $extension = pathinfo($orig_filename, PATHINFO_EXTENSION);
    }

    if($extension=='' && empty($_FILES[$file_upload_control_name]['name'][$a]))
    {
        //No file uploaded at all. We treat it as "allowed extension"
        //since we aren't blocking an invalid file type. The fact that it is empty
        //will be caught by other checks below.
        $allowed_extension=TRUE;
    }
    else
    {
        //Verify that file extension is in whitelist
        $allowed_extension = FALSE;
        require_once 'upload_generic_whitelist.php';
        if(in_array(strtolower($extension), $arr_good_extensions))
        {
            //in whitelist, good
            $allowed_extension = TRUE;
        }
        else
        {
            $empty_previous_file = TRUE;
        }
    }

    //Server-side check to ensure the uploaded file follows the filesize limit
    //More eliable check versus error code 2 check, will work even if form MAX_FILE_SIZE was spoofed
    if($allowed_extension && $_FILES[$file_upload_control_name]['size'][$a] > $max_attachment_size)
    {
        $message .= "File (" . $orig_filename . ") was not uploaded. Please try again, and make sure filesize is less than {$max_attachment_size_MB}MB<br>";
        if(DEBUG_MODE)
        {
            $message .= '-> [ERROR CODE 99]<br>';
        }
    }
    elseif($allowed_extension && $_FILES[$file_upload_control_name]['error'][$a] == 0)
    {
        $token = generate_token(0, 'fs');
        $temp_filename = $token . $orig_filename;

        if(isset($upload_dir) && $upload_dir != '')
        {
            $valid_upload_dir = TMP_DIRECTORY . '/' . str_replace('../', '', $upload_dir); //str_replace used to block relative path traversal vulnerability
            if(!is_dir($valid_upload_dir))
            {
                //assumes $upload_dir is not nested subdirectories.
                mkdir($valid_upload_dir, 0755);
                chmod($valid_upload_dir, 0755);
            }
        }
        else
        {
            $valid_upload_dir = TMP_DIRECTORY;
        }
        $upload_destination_file = $valid_upload_dir . '/' . basename($temp_filename);

        if(move_uploaded_file($_FILES[$file_upload_control_name]['tmp_name'][$a], $upload_destination_file))
        {
            ${$file_upload_control_name}[$a] = $temp_filename;
        }
        else
        {
            $message .= "File (" . $orig_filename . ") was not uploaded due to server error. Please contact the system admnistrator.<br>";
        }
    }
    elseif($allowed_extension)
    {
        if($orig_filename != '')
        {
            $empty_previous_file = TRUE;

            //No file was received even though an attempt was made by the user, determine what error happened
            //Following check is useful for other errors (codes 1,3,6,7) but not reliable for error code 2, and usually not for 8
            switch($_FILES[$file_upload_control_name]['error'][$a])
            {
                case UPLOAD_ERR_INI_SIZE : $message .= "File (" . $orig_filename . ") was not uploaded. Please try again, and make sure filesize is less than {$max_attachment_size_MB}MB<br>";
                        if(DEBUG_MODE)
                        {
                            $message .= '-> [ERROR CODE 1]<br>';
                        }
                        break;

                case UPLOAD_ERR_FORM_SIZE : $message .= "File (" . $orig_filename . ") was not uploaded. Please try again, and make sure filesize is less than {$max_attachment_size_MB}MB<br>";
                        if(DEBUG_MODE)
                        {
                            $message .= '-> [ERROR CODE 2]<br>';
                        }
                        break;

                case UPLOAD_ERR_PARTIAL : $message .= "File (" . $orig_filename . ") was only partially uploaded due to network or server problems. Please try again. <br>";
                        if(DEBUG_MODE)
                        {
                            $message .= '-> [ERROR CODE 3]<br>';
                        }
                        break;

                case UPLOAD_ERR_NO_FILE : break;

                case UPLOAD_ERR_NO_TMP_DIR : $message .= "File (" . $orig_filename . ") was not uploaded due to a server error::code 6. Please contact the system administrator. <br>";
                        if(DEBUG_MODE)
                        {
                            $message .= '-> [ERROR CODE 6]<br>';
                        }
                        break;
                case UPLOAD_ERR_CANT_WRITE : $message .= "File (" . $orig_filename . ") was not uploaded due to server error::code 7. Please contact the system administrator. <br>";
                        if(DEBUG_MODE)
                        {
                            $message .= '-> [ERROR CODE 7]<br>';
                        }
                        break;
                case UPLOAD_ERR_EXTENSION : $message .= "File (" . $orig_filename . ") was not uploaded due to server error::code 8. Please contact the system administrator. <br>";
                        if(DEBUG_MODE)
                        {
                            $message .= '-> [ERROR CODE 8]<br>';
                        }
                        break;

                default : break;
            }
        }
    }
    else
    {
        $message = 'File not uploaded: invalid file type. Please consult your system admnistrator for allowed file types.<br>';
    }

    if($empty_previous_file)
    {
        //Empty whatever previous valid file was uploaded, since user intent is to upload new file/version. It will
        //be confusing if we retain old file if new file upload failed for any reason
        if(isset($_POST[$existing_file_upload_control_name][$a]))
        {
            $_POST[$existing_file_upload_control_name][$a] = '';
        }
    }

    if(empty(${$file_upload_control_name}[$a]))
    {
        //No file uploaded, so rely on whatever is already existing (if there is)
        $arr_form_data[$file_upload_control_name][$a] = $_POST[$existing_file_upload_control_name][$a];
        ${$file_upload_control_name}[$a] = $_POST[$existing_file_upload_control_name][$a];
    }
    else
    {
        //File uploaded successfully, form data should be updated
        $arr_form_data[$file_upload_control_name][$a] = ${$file_upload_control_name}[$a];
    }
}