<?php
require 'components/get_listview_referrer.php';

require 'subclasses/Company.php';
$dbh_Company = new Company;
$dbh_Company->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_Company->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$DateCreated);
    $DateCreated_year = $data[0];
    $DateCreated_month = $data[1];
    $DateCreated_day = $data[2];
}

