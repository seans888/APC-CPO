<?php
require 'components/get_listview_referrer.php';

require 'subclasses/alumniemplrecord.php';
$dbh_alumniemplrecord = new alumniemplrecord;
$dbh_alumniemplrecord->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_alumniemplrecord->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$StartDate);
    if(count($data) == 3)
    {
        $StartDate_year = $data[0];
        $StartDate_month = $data[1];
        $StartDate_day = $data[2];
    }
    $data = explode('-',$EndDate);
    if(count($data) == 3)
    {
        $EndDate_year = $data[0];
        $EndDate_month = $data[1];
        $EndDate_day = $data[2];
    }
}

