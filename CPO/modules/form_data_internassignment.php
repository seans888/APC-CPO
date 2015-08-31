<?php
require 'components/get_listview_referrer.php';

require 'subclasses/internassignment.php';
$dbh_internassignment = new internassignment;
$dbh_internassignment->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_internassignment->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$StartDate);
    $StartDate_year = $data[0];
    $StartDate_month = $data[1];
    $StartDate_day = $data[2];
    $data = explode('-',$EndDate);
    $EndDate_year = $data[0];
    $EndDate_month = $data[1];
    $EndDate_day = $data[2];
}

