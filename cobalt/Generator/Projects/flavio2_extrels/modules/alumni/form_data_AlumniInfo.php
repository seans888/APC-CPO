<?php
require 'components/get_listview_referrer.php';

require 'subclasses/AlumniInfo.php';
$dbh_AlumniInfo = new AlumniInfo;
$dbh_AlumniInfo->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_AlumniInfo->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$BirthDate);
    $BirthDate_year = $data[0];
    $BirthDate_month = $data[1];
    $BirthDate_day = $data[2];
}

