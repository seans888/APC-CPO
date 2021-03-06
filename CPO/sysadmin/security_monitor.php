<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Security Monitor');

$SHOW_MONITOR_2=FALSE;
$SHOW_MONITOR_3=FALSE;

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['ViewMonitor']);
    init_var($_POST['ViewMonitorPF']);

    if($_POST['btn_cancel']) 
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect(HOME_PAGE);
    }

    if(isset($_POST['DateTimeOptions'])) 
    {
        $DateTimeOptions = $_POST['DateTimeOptions'];
        $TimeStart       = $_POST['TimeStart'];
        $TimeEnd         = $_POST['TimeEnd'];
    }
    else 
    {
        $DateTimeOptions = "ViewAll";
        $TimeStart       = "-NO RANGE-";
        $TimeEnd         = "-NO RANGE-";
    }

    if(isset($_POST['UserOptions']))
    {
        $UserOptions = $_POST['UserOptions'];
        $Username    = $_POST['Username'];
    }
    else 
    {
        $UserOptions = "ViewAll";
        $Username    = "-ALL USERS-";
    }

    if(isset($_POST['ModuleOptions']))
    {
        $ModuleOptions = $_POST['ModuleOptions'];
        $Module        = $_POST['Module'];
    }
    else 
    {
        $ModuleOptions = "ViewAll";
        $Module = "-ALL MODULES-";
    }

    if(isset($_POST['KeywordSearch']))
    {
        $KeywordSearch = $_POST['KeywordSearch'];
        $Keyword       = $_POST['Keyword'];
    }
    else 
    {
        $KeywordSearch = "Off";
        $Keyword       = "-NO KEYWORDS-";
    }

    if(isset($_POST['IPAddressOptions']))
    {
        $IPAddressOptions = $_POST['IPAddressOptions'];
        $IPAddress        = $_POST['IPAddress'];
    }
    else 
    {
        $IPAddressOptions = "Off";
        $IPAddress        = "-NO KEYWORDS-";
    }

    if($_POST['ViewMonitor'] || $_POST['ViewMonitorPF'])
    {
        $RealTimeStart = $TimeStart;
        $RealTimeEnd = $TimeEnd;

        if($DateTimeOptions!="ViewAll")
        {
            if($TimeStart!="") $TimeStart = strtotime($TimeStart);
            else $TimeStart = FALSE;
            if($TimeEnd!="")$TimeEnd = strtotime($TimeEnd);
            else $TimeEnd = FALSE;

            if($TimeStart == FALSE) $message=$message . "Invalid start time <br />";
            if($TimeEnd == FALSE) $message=$message . "Invalid end time <br />";

            if(($TimeStart > FALSE) && ($TimeEnd > FALSE))
            {
                if($TimeStart > $TimeEnd) $message = $message . "Invalid assigned time. Start time comes after the end time. <br />";
            }
        }

        if($UserOptions!="ViewAll")
        {
            if($Username=="") $message = $message . "Please enter a username. <br />";
        }

        if($ModuleOptions!="ViewAll")
        {
            if($Module=="") $message = $message . "Please enter a module. <br />";
        }

        if($KeywordSearch!="Off")
        {
            if($Keyword=="") $message = $message . "Please enter a keyword or keywords to filter the log entries. <br />";
        }

        if($IPAddressOptions!="Off")
        {
            if($IPAddress=="") $message = $message . "Please enter a full or partial IP address to filter the log entries. <br />";
        }

        if($message=="") 
        {
            require 'core_extra.php';
            if($_POST['ViewMonitor'])
            {
                $SHOW_MONITOR_2=TRUE;
            }
            else 
            {
                $SHOW_MONITOR_3=TRUE;
            }
        }

        $TimeStart=$RealTimeStart;
        $TimeEnd=$RealTimeEnd;
    }
}
$html_writer = new html;
$html_writer->draw_header('Security Monitor', $message, $message_type);

if($SHOW_MONITOR_2)
{
    new_window("security_monitor2.php?DateTimeOptions=$DateTimeOptions&UserOptions=$UserOptions&ModuleOptions=$ModuleOptions&TimeStart=$TimeStart&TimeEnd=$TimeEnd&Username=$Username&Module=$Module&KeywordSearch=$KeywordSearch&Keyword=$Keyword&IPAddressOptions=$IPAddressOptions&IPAddress=$IPAddress");
}
elseif($SHOW_MONITOR_3)
{
    new_window("security_monitor3.php?DateTimeOptions=$DateTimeOptions&UserOptions=$UserOptions&ModuleOptions=$ModuleOptions&TimeStart=$TimeStart&TimeEnd=$TimeEnd&Username=$Username&Module=$Module&KeywordSearch=$KeywordSearch&Keyword=$Keyword&IPAddressOptions=$IPAddressOptions&IPAddress=$IPAddress");
}
?>
<script>
function NoRange()
{
    window.document.cobalt_form.TimeStart.value='-NO RANGE-';
    window.document.cobalt_form.TimeEnd.value='-NO RANGE-'
}
function WithRange()
{
    if(window.document.cobalt_form.TimeStart.value=='-NO RANGE-') window.document.cobalt_form.TimeStart.value='';
    if(window.document.cobalt_form.TimeEnd.value=='-NO RANGE-') window.document.cobalt_form.TimeEnd.value=''
}
function AllUsers()
{
    window.document.cobalt_form.Username.value='-ALL USERS-';
}
function OneUser()
{
    if(window.document.cobalt_form.Username.value=='-ALL USERS-') window.document.cobalt_form.Username.value='';
}
function AllModules()
{
    window.document.cobalt_form.Module.value='-ALL MODULES-';
}
function OneModule()
{
    if(window.document.cobalt_form.Module.value=='-ALL MODULES-') window.document.cobalt_form.Module.value='';
}
function KeywordSearchOff()
{
    window.document.cobalt_form.Keyword.value='-NO KEYWORDS-';
}
function KeywordSearchOn()
{
    if(window.document.cobalt_form.Keyword.value=='-NO KEYWORDS-') window.document.cobalt_form.Keyword.value='';
}
function IPAddressFilterOff()
{
    window.document.cobalt_form.IPAddress.value='-NO IP ADDRESS-';
}
function IPAddressFilterOn()
{
    if(window.document.cobalt_form.IPAddress.value=='-NO IP ADDRESS-') window.document.cobalt_form.IPAddress.value='';
}

</script>
<?php
echo '<div class="container">
    <fieldset class="container_invisible">
    <fieldset class="top"> Review Actions Done on the System</fieldset>
    <fieldset class="middle">';
?>
<input type=submit name=ViewMonitor value="VIEW SECURITY MONITOR" class=submit>
<input type=submit name=ViewMonitorPF value="PRINTABLE VIEW" class=submit>
<input type=submit name=btn_cancel value="BACK" class=cancel>
<br />

    <table class="listView" cellpadding="10">
    <TR class="listRowHead"><TD colspan="4">Monitor Settings</TD></TR>
    <TR class='listRowOdd'><TD colspan=4>DATE & TIME RANGE Options: 
<?php
    init_var($DateTimeOptions);
    init_var($TimeStart);
    init_var($TimeEnd);
    init_var($UserOptions);
    init_var($Username);
    init_var($ModuleOptions);
    init_var($Module);
    init_var($KeywordSearch);
    init_var($Keyword);
    init_var($IPAddressOptions);
    init_var($IPAddress);

    if($DateTimeOptions!="ViewAll")
    {
        echo "<input type=radio name=DateTimeOptions value=ViewAll onClick='NoRange();'> Since beginning";
        echo "<input type=radio name=DateTimeOptions value=Specify onClick='WithRange();' checked> Specify date and time range";
    }
    else
    {
        echo "<input type=radio name=DateTimeOptions value=ViewAll onClick='NoRange();' checked> Since beginning";
        echo "<input type=radio name=DateTimeOptions value=Specify onClick='WithRange();'> Specify date and time range";
    }
?>
    </TD></TR>
    <TR class='listRowEven'>
        <TD valign="middle">START:</TD><TD><input type="text" size="40" name="TimeStart" value="<?php echo $TimeStart;?>"><br /><i>Sample: January 21 1986 6:25 am</i></span></TD>
        <TD valign="middle" align="right">END:</TD><TD><input type="text" size="40" name="TimeEnd" value="<?php echo $TimeEnd;?>"><br /><i>Sample: January 21 1986 9:35 pm</i></span></TD>
    </TR>
    
    <TR class='listRowOdd'><TD colspan=2>USER Options: 
<?php
    if($UserOptions!="ViewAll")
    {
        echo "<input type=radio name=UserOptions value=ViewAll onClick='AllUsers();'> All Users";
        echo "<input type=radio name=UserOptions value=Specify onClick='OneUser();' checked> Specify User";
    }
    else
    {
        echo "<input type=radio name=UserOptions value=ViewAll onClick='AllUsers();' checked> All Users";
        echo "<input type=radio name=UserOptions value=Specify onClick='OneUser();'> Specify User";
    }
?>
    <TD valign="middle" align="right">Username:</TD>
    <TD>
        <input type="text" size="40" name="Username" value="<?php echo $Username;?>">
    </TD>
    </TR>
    
    <TR class='listRowEven'><TD colspan=2>MODULE Options: 
<?php
    if($ModuleOptions!="ViewAll")
    {
        echo "<input type=radio name=ModuleOptions value=ViewAll onClick='AllModules();'> All Modules";
        echo "<input type=radio name=ModuleOptions value=Specify onClick='OneModule();' checked> Specify Module";
    }
    else
    {
        echo "<input type=radio name=ModuleOptions value=ViewAll onClick='AllModules();' checked> All Modules";
        echo "<input type=radio name=ModuleOptions value=Specify onClick='OneModule();'> Specify Modules";
    }
?>
    <TD valign="middle" align="right">Module:</TD>
    <TD>
        <input type="text" size="40" name="Module" value="<?php echo $Module;?>">
    </TD>
    </TR>

    <TR class='listRowOdd'><TD colspan=2>Keyword Search: 
<?php
    if($KeywordSearch!="Off")
    {
        echo "<input type=radio name=KeywordSearch value=Off onClick='KeywordSearchOff();'> Off";
        echo "<input type=radio name=KeywordSearch value=On onClick='KeywordSearchOn();' checked> On";
    }
    else
    {
        echo "<input type=radio name=KeywordSearch value=Off onClick='KeywordSearchOff();' checked> Off";
        echo "<input type=radio name=KeywordSearch value=On onClick='KeywordSearchOn();'> On";
    }
?>
    <TD valign="middle" align="right">Keyword(s):</TD>
    <TD>
        <input type="text" size="40" name="Keyword" value="<?php echo $Keyword;?>">
    </TD>
    </TR>

    <TR class='listRowEven'><TD colspan=2>IP Address Filter: 
<?php
    if($IPAddressOptions!="Off")
    {
        echo "<input type=radio name=IPAddressOptions value=Off onClick='IPAddressFilterOff();'> Off";
        echo "<input type=radio name=IPAddressOptions value=On onClick='IPAddressFilterOn();' checked> On";
    }
    else
    {
        echo "<input type=radio name=IPAddressOptions value=Off onClick='IPAddressFilterOff();' checked> Off";
        echo "<input type=radio name=IPAddressOptions value=On onClick='IPAddressFilterOn();'> On";
    }
?>
    <TD valign="middle" align="right">IP Filter:</TD>
    <TD>
        <input type="text" size="40" name="IPAddress" value="<?php echo $IPAddress;?>">
    </TD>
    </TR>
    </TABLE>
<br />
<input type="submit" name="ViewMonitor" value="VIEW SECURITY MONITOR" class="submit">
<input type="submit" name="ViewMonitorPF" value="PRINTABLE VIEW" class="submit">
<input type="submit" name="btn_cancel" value="BACK" class="cancel">

<?php
echo '</fieldset>';
echo '</fieldset>';
echo '</div>';
$html_writer->draw_footer();
