<?php
require 'components/get_listview_referrer.php';

require 'subclasses/parent_attendance.php';
$dbh_parent_attendance = new parent_attendance;
$dbh_parent_attendance->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_parent_attendance->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

