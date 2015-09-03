<?php
if(DEBUG_MODE)
{
    function brpt($enable_full_backtrace=FALSE)
    {
        $style = debug_style();

        echo '<pre style="' . $style . '">';
        echo '<hr>';
        echo 'CODE EXECUTION GOT HERE';

        if($enable_full_backtrace)
        {
            echo '<br>';
            var_dump(debug_backtrace());
        }
        else
        {
            $arr_backtrace = debug_backtrace();
            foreach($arr_backtrace as $trace_data)
            {
                echo '<br>File: ' . $trace_data['file'];
                echo ' -> Line: ' . $trace_data['line'];
            }
        }
        echo '<hr>';
        echo '</pre>';
    }

    function debug($var, $var_name='', $sort=TRUE)
    {
        $style = debug_style();

        $title='DEBUG OUTPUT';
        if($var_name!='')
        {
            $title .= ': ' . $var_name;
        }

        echo '<fieldset style="' . $style . '">';
        echo '<legend>' . $title . '</legend>';
        echo '<pre>';

        $arr_backtrace = debug_backtrace();
        foreach($arr_backtrace as $trace_data)
        {
            echo 'File: ' . $trace_data['file'];
            echo ' -> Line: ' . $trace_data['line'];
            break; //we only need the first item, no matter how many items debug_backtrace() returns.
        }
        echo '<br />';

        if(is_array($var) && $sort)
        {
            sort_dump($var);
        }
        else
        {
            var_dump($var);
        }
        echo '</pre>';
        echo '</fieldset>';
    }

    function debug_all()
    {
        $style = debug_style();

        echo '<fieldset style="' . $style . '">';
        echo '<legend>DEBUG ALL</legend>';
        echo '<pre>';

        $arr_backtrace = debug_backtrace();
        foreach($arr_backtrace as $trace_data)
        {
            echo 'File: ' . $trace_data['file'];
            echo ' -> Line: ' . $trace_data['line'];
            break; //we only need the first item, no matter how many items debug_backtrace() returns.
        }
        echo '</pre>';
        echo '</fieldset>';


        $data = array('SESSION','POST','GET','FILES','CONSTANTS','SERVER','FUNCTIONS','ENVIRONMENT');

        foreach($data as $title)
        {
            echo '<fieldset style="' . $style . '">';
            echo '<legend>DEBUG OUTPUT: ' . $title . '</legend>';
            echo '<pre>';
            switch($title)
            {
                case 'SESSION'    : sort_dump($_SESSION);
                                    break;

                case 'POST'       : sort_dump($_POST);
                                    break;

                case 'GET'        : sort_dump($_GET);
                                    break;

                case 'FILES'      : sort_dump($_FILES);
                                    break;

                case 'CONSTANTS'  : $arr_constants = get_defined_constants(true);
                                    sort_dump($arr_constants['user']);
                                    break;

                case 'SERVER'     : sort_dump($_SERVER);
                                    break;

                case 'ENVIRONMENT': sort_dump($_ENV);
                                    break;

                case 'FUNCTIONS'  : $arr_functions = get_defined_functions();
                                    sort($arr_functions['user']);
                                    echo ' User-defined functions:<br>';
                                    foreach($arr_functions['user'] as $func)
                                    {
                                        echo ' - ' . $func . '()<br>';
                                    }
                                    break;

                break;
            }
            echo '</pre>';
            echo '</fieldset><br>';
        }
    }

    function debug_timer($prev_time=null, $output=TRUE)
    {
        if($prev_time < 1)
        {
            return microtime(true);
        }
        else
        {
            $proc_time = microtime(true) - $prev_time;
            if($output)
            {
                echo "Processing time: " . number_format($proc_time, 10) . " seconds<br>";
            }
            return $proc_time;
        }
    }

    function debug_style()
    {
        return "background-color: #ffffff; color: #990000; font-size: 16px; font-weight: bold;";
    }

    function sort_dump($data)
    {
        $sorted = ksort($data);
        var_dump($data);
    }

    function print_fieldsets($subclass)
    {
        $obj = cobalt_load_class($subclass);

        $lst_fields = '';
        foreach($obj->fields as $field_name=>$field_struct)
        {
            make_list($lst_fields, $field_name);
        }

        $settings = "        \$this->fieldsets = array(" . "\r\n"
                   ."                                 'default'=>array(" . $lst_fields . ")" . "\r\n"
                   ."                                );";

        echo '<pre>' . $settings . '</pre>';
    }
}
