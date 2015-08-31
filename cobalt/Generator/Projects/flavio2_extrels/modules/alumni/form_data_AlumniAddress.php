<?php
require 'components/get_listview_referrer.php';

require 'subclasses/AlumniAddress.php';
$dbh_AlumniAddress = new AlumniAddress;
$dbh_AlumniAddress->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_AlumniAddress->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

