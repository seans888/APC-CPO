<?php
require 'components/get_listview_referrer.php';

require 'subclasses/alumniemplmove.php';
$dbh_alumniemplmove = new alumniemplmove;
$dbh_alumniemplmove->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_alumniemplmove->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$DateEffective);
    if(count($data) == 3)
    {
        $DateEffective_year = $data[0];
        $DateEffective_month = $data[1];
        $DateEffective_day = $data[2];
    }
}

