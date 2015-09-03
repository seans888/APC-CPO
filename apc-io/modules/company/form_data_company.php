<?php
require 'components/get_listview_referrer.php';

require 'subclasses/company.php';
$dbh_company = new company;
$dbh_company->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_company->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$DateCreated);
    if(count($data) == 3)
    {
        $DateCreated_year = $data[0];
        $DateCreated_month = $data[1];
        $DateCreated_day = $data[2];
    }
}

