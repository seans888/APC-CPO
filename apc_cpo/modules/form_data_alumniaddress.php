<?php
require 'components/get_listview_referrer.php';

require 'subclasses/alumniaddress.php';
$dbh_alumniaddress = new alumniaddress;
$dbh_alumniaddress->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_alumniaddress->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

