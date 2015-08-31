<?php
require 'components/get_listview_referrer.php';

require 'subclasses/AlumniContactDetails.php';
$dbh_AlumniContactDetails = new AlumniContactDetails;
$dbh_AlumniContactDetails->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_AlumniContactDetails->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

