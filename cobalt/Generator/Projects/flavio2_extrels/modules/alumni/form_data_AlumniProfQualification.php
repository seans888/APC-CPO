<?php
require 'components/get_listview_referrer.php';

require 'subclasses/AlumniProfQualification.php';
$dbh_AlumniProfQualification = new AlumniProfQualification;
$dbh_AlumniProfQualification->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_AlumniProfQualification->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$DateEffective);
    $DateEffective_year = $data[0];
    $DateEffective_month = $data[1];
    $DateEffective_day = $data[2];
}

