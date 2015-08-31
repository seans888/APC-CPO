<?php
require 'components/get_listview_referrer.php';

require 'subclasses/PhilZip.php';
$dbh_PhilZip = new PhilZip;
$dbh_PhilZip->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_PhilZip->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

