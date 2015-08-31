<?php
require 'components/get_listview_referrer.php';

require 'subclasses/AlumniEmplMove.php';
$dbh_AlumniEmplMove = new AlumniEmplMove;
$dbh_AlumniEmplMove->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_AlumniEmplMove->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$DateEffective);
    $DateEffective_year = $data[0];
    $DateEffective_month = $data[1];
    $DateEffective_day = $data[2];
}

