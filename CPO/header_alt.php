<?php
if(session_status() != PHP_SESSION_ACTIVE)
{
    header("location: start.php");
    die();
}

require_once $_SESSION['header'];
?>
<script>
if (top.location != location)
{
    top.location.href = document.location.href ;
}
</script>
<div class="HeaderBanner">
<?php echo GLOBAL_PROJECT_NAME;?><span>&nbsp;</span>
</div>
<div class='HeaderMenu'>
    <table width="100%">
    <tr>
        <td class="menu" width="100"> <a href='/<?php echo BASE_DIRECTORY;?>/main.php' class="menu">  HOME  </a> </td>
        <td class="menu" width="100"> <a href='/<?php echo BASE_DIRECTORY;?>/change_password.php' class="menu">  PASSWORD  </a> </td>
        <td class="menu" width="100"> <a href='/<?php echo BASE_DIRECTORY;?>/change_skin.php' class="menu">  SKIN  </a> </td>
        <td class="menu" width="100"> <a href='/<?php echo BASE_DIRECTORY;?>/about.php' class="menu">  ABOUT  </a> </td>
        <td class="menu" width="100"> <a href='#' class="menu">  HELP  </a> </td>
        <td align="right"><span class="text-normal">You are logged in as</span> <span class="text-info"><?php echo htmlentities($_SESSION['user'], ENT_COMPAT, MULTI_BYTE_ENCODING);?></span>&nbsp;</td>
        <td class="menu" width="75"> <a onClick="return confirm('Are you sure you wish to logout?')" href='/<?php echo BASE_DIRECTORY;?>/end.php' class="menu">  [LOGOUT]  </a> </td>
    </tr>
    </table>
</div>
