<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Security Monitor');

$CREATE_FILTERS = FALSE;
$filter         = '';
$filter_field   = '';
$result_pager   = '';
$current_page   = '';

if(isset($_GET['DateTimeOptions']))
{
    $DateTimeOptions  = $_GET['DateTimeOptions'];
    $UserOptions      = $_GET['UserOptions'];
    $ModuleOptions    = $_GET['ModuleOptions'];
    $KeywordSearch    = $_GET['KeywordSearch'];
    $IPAddressOptions = $_GET['IPAddressOptions'];
    $TimeStart        = $_GET['TimeStart'];
    $TimeEnd          = $_GET['TimeEnd'];
    $Username         = $_GET['Username'];
    $Module           = $_GET['Module'];
    $Keyword          = $_GET['Keyword'];
    $IPAddress        = $_GET['IPAddress'];

    if(isset($_GET['current_page']))
    {
        $current_page = $_GET['current_page'];
    }

    $CREATE_FILTERS = TRUE;
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    
    if($_POST['btn_cancel']) 
    {
        log_action("Pressed cancel button");
        echo "<script>window.close()</script>";
    }

    if(isset($_POST['start']))
    {
        $start = $_POST['start'];
    }

    $DateTimeOptions  = $_POST['DateTimeOptions'];
    $UserOptions      = $_POST['UserOptions'];
    $ModuleOptions    = $_POST['ModuleOptions'];
    $KeywordSearch    = $_POST['KeywordSearch'];
    $IPAddressOptions = $_POST['IPAddressOptions'];
    $TimeStart        = $_POST['TimeStart'];
    $TimeEnd          = $_POST['TimeEnd'];
    $Username         = $_POST['Username'];
    $Module           = $_POST['Module'];
    $Keyword          = $_POST['Keyword'];
    $IPAddress        = $_POST['IPAddress'];
    $current_page     = $_POST['current_page'];
    $result_pager     = $_POST['result_pager'];
    $settings         = $_POST['settings'];

    $CREATE_FILTERS=TRUE;
}

if($CREATE_FILTERS)
{
    $settings="";
    if($DateTimeOptions=="ViewAll")
    {
        $settings.= "*No date and time range. <br />";
        $TimeFilter= "1=1";
    }
    else
    {
        $settings.= "*Start search at ". date("F d Y, g:i a",$TimeStart)." and end at ". date("F d Y, g:i a",$TimeEnd)." <br />";
        $TimeFilter = "datetime >= '" . quote_smart($TimeStart) . "' AND datetime <= '" . quote_smart($TimeEnd) . "'";
    }

    if($UserOptions=="ViewAll")
    {
        $settings.="*View all users. <br />";
        $UserFilter = "1=1";
    }
    else 
    {
        $settings.="*View only user '" . cobalt_htmlentities($Username) . "'.<br />";
        $UserFilter = "user = '" . quote_smart($Username) . "'";
    }

    if($ModuleOptions=="ViewAll")
    {
        $settings.="*View all events in all modules. <br />";
        $ModuleFilter="1=1";
    }
    else
    {
        $settings.="*View only events at module '" . cobalt_htmlentities($Module) . "'<br />";
        $ModuleFilter="module LIKE '%" . quote_smart($Module) . "%'";
    }

    if($KeywordSearch=="Off")
    {
        $settings.="*No keywords used to filter results. <br />";
        $KeywordFilter="1=1";
    }
    else
    {
        $settings.="*Used the following keyword(s) as filter: '" . cobalt_htmlentities($Keyword) . "'<br />";
        $KeywordFilter="action LIKE '%" . quote_smart($Keyword) . "%'";
    }

    if($IPAddressOptions=="Off")
    {
        $settings.="*No IP address used to filter results. <br />";
        $IPAddressFilter="1=1";
    }
    else
    {
        $settings.="*Used the following as IP address filter: '" . cobalt_htmlentities($IPAddress) . "'<br />";
        $IPAddressFilter="ip_address LIKE '%" . quote_smart($IPAddress) . "%'";
    }

    $DateTimeOptions  = cobalt_htmlentities($DateTimeOptions);
    $UserOptions      = cobalt_htmlentities($UserOptions);
    $ModuleOptions    = cobalt_htmlentities($ModuleOptions);
    $KeywordSearch    = cobalt_htmlentities($KeywordSearch);
    $IPAddressOptions = cobalt_htmlentities($IPAddressOptions);
    $TimeStart        = cobalt_htmlentities($TimeStart);
    $TimeEnd          = cobalt_htmlentities($TimeEnd);
    $Username         = cobalt_htmlentities($Username);
    $Module           = cobalt_htmlentities($Module);
    $Keyword          = cobalt_htmlentities($Keyword);
    $IPAddress        = cobalt_htmlentities($IPAddress);
}


if(!isset($start)) $start=0;

//Pagination ****************************
//->Query to get total number of records.
$data_con = new data_abstraction;
$data_con->set_fields("entry_id, ip_address, user, datetime, action, module");
$data_con->set_table("`system_log`");
$data_con->set_where("$TimeFilter AND $UserFilter AND $ModuleFilter AND $KeywordFilter AND $IPAddressFilter");
$data_con->set_order("entry_id");
if($result = $data_con->make_query()->result)
{
    $total_records = $data_con->num_rows;
}
else die("Error getting log entries: " . $data_con->QUERY);

//-> Now instantiate the pagination class and feed it the necessary information.
require 'paged_result_class.php';
$results_per_page = 50;
$pager = new paged_result($total_records, $results_per_page);
$pager->get_page_data($result_pager, $current_page);
$current_page = $pager->current_page;
$data_con->set_limit($pager->offset, $pager->records_per_page);

$html_writer = new html;
$html_writer->draw_header('Security Monitor', $message, $message_type);
require '../javascript/submitenter.php';
?>
<input type="hidden" name="DateTimeOptions" value="<?php echo $DateTimeOptions;?>">
<input type="hidden" name="UserOptions" value="<?php echo $UserOptions;?>">
<input type="hidden" name="ModuleOptions" value="<?php echo $ModuleOptions;?>">
<input type="hidden" name="KeywordSearch" value="<?php echo $KeywordSearch;?>">
<input type="hidden" name="IPAddressOptions" value="<?php echo $IPAddressOptions;?>">
<input type="hidden" name="TimeStart" value="<?php echo $TimeStart;?>">
<input type="hidden" name="TimeEnd" value="<?php echo $TimeEnd;?>">
<input type="hidden" name="Username" value="<?php echo $Username;?>">
<input type="hidden" name="Module" value="<?php echo $Module;?>">
<input type="hidden" name="Keyword" value="<?php echo $Keyword;?>">
<input type="hidden" name="IPAddress" value="<?php echo $IPAddress;?>">
<input type="hidden" name="settings" value="<?php echo $settings;?>">

<fieldset class="container">
<table width="100%" cellpadding="0" cellspacing="0">
<tr class="listRowOddNoHighlight">
    <td colspan="2">
        <?php $html_writer->display_info("Monitor Settings:<br />" . $settings); ?>
    </td>
</tr>
<tr class="listRowEvenNoHighlight">
    <td align=left><?php $html_writer->draw_button('CANCEL'); ?></td>
    <td align=right><?php echo $pager->draw_paged_result('onKeyPress="submitenter(this,event)"'); ?></td>
</tr>
<?php
        //If there is more than one page, show navigators
        if($pager->total_pages > 1)
        {
            echo '<tr><td colspan="2"><hr></td></tr>
                  <tr><td colspan="2">';

            //Variables to pass:
            $info_to_pass = "DateTimeOptions=$DateTimeOptions&UserOptions=$UserOptions&"
                           ."ModuleOptions=$ModuleOptions&TimeStart=$TimeStart&TimeEnd=$TimeEnd&"
                           ."Username=$Username&Module=$Module&KeywordSearch=$KeywordSearch&"
                           ."Keyword=$Keyword&IPAddressOptions=$IPAddressOptions&IPAddress=$IPAddress";

            //Show "previous" only if we're not on page 1
            if($pager->current_page > 1)
            {
                $prev_page = $pager->current_page - 1;
                echo " <a class=\"listview\" href=\"" . $_SERVER['PHP_SELF']
                   . "?current_page=" . $prev_page . '&'
                   . "filter=" . $filter . '&'
                   . "filter_field=" . $filter_field . '&'
                   . $info_to_pass
                   . "\">&lt;&lt;Previous Page</a>&nbsp;&nbsp;&nbsp;&nbsp;";
            }
            else echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';

            //Show "next" only if we're not on the last page
            if($pager->current_page < $pager->total_pages)
            {
                $next_page = $pager->current_page + 1;
                echo "<a class=\"listview\" href=\"" . $_SERVER['PHP_SELF']
                   . "?current_page=" . $next_page . '&'
                   . "filter=" . $filter . '&'
                   . "filter_field=" . $filter_field . '&'
                   . $info_to_pass
                   . "\">Next Page&gt;&gt;</a> ";
            }
            
            echo '</td></tr>';
        }
?>
</table>

<table border=1 width=100% class=listView>
<tr class=listRowHead>
    <td>Entry ID</td>
    <td>IP Address</td>
    <td>User</td>
    <td>Timestamp</td>
    <td>Action</td>
    <td>Module</td>
</tr>

<?php
    if($result = $data_con->make_query()->result)
    {
        $numrows = $data_con->num_rows;

        if($numrows == 1) $record = 'record';
        else $record = 'records';

        $a=1;
        while($row = $result->fetch_assoc())
        {
            if($a%2==0) $class='listRowEven';
            else $class='listRowOdd';
            $a++;

            extract($row);
            echo '<tr class="' . $class . '">
                    <td>' . cobalt_htmlentities($entry_id) . '</td>
                    <td>' . cobalt_htmlentities($ip_address) . '</td>
                    <td>' . cobalt_htmlentities($user) . '</td>
                    <td>' . date("l, F d, Y -- h:i:s a", $datetime) . '</td>
                    <td>' . nl2br(cobalt_htmlentities($action)) . '</td>
                    <td>' . cobalt_htmlentities($module) . '</td> </tr>' . "\n";
        }
        $result->close();
    }
    else error_handler("Error getting log entries: ", "Query: " . $data_con->query . " -----Error: " . $data_con->error);
?>
</table>
</FORM>
</fieldset>
<?php $html_writer->draw_footer(); ?>
