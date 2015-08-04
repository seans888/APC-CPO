<?php
require 'components/get_listview_referrer.php';

require 'subclasses/employmentstatus.php';
$dbh_employmentstatus = new employmentstatus;
$dbh_employmentstatus->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_employmentstatus->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

