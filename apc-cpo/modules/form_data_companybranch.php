<?php
require 'components/get_listview_referrer.php';

require 'subclasses/companybranch.php';
$dbh_companybranch = new companybranch;
$dbh_companybranch->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_companybranch->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$DateCreated);
    $DateCreated_year = $data[0];
    $DateCreated_month = $data[1];
    $DateCreated_day = $data[2];
    $data = explode('-',$DateStart);
    $DateStart_year = $data[0];
    $DateStart_month = $data[1];
    $DateStart_day = $data[2];
    $data = explode('-',$DateEnd);
    $DateEnd_year = $data[0];
    $DateEnd_month = $data[1];
    $DateEnd_day = $data[2];
}

