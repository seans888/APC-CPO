<?php
require 'components/get_listview_referrer.php';

require 'subclasses/PhilRegion.php';
$dbh_PhilRegion = new PhilRegion;
$dbh_PhilRegion->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_PhilRegion->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

