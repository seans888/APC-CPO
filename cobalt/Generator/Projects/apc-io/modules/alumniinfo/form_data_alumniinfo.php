<?php
require 'components/get_listview_referrer.php';

require 'subclasses/alumniinfo.php';
$dbh_alumniinfo = new alumniinfo;
$dbh_alumniinfo->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_alumniinfo->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$BirthDate);
    if(count($data) == 3)
    {
        $BirthDate_year = $data[0];
        $BirthDate_month = $data[1];
        $BirthDate_day = $data[2];
    }
}

