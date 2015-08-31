<?php
require 'components/get_listview_referrer.php';

require 'subclasses/InternalSchool.php';
$dbh_InternalSchool = new InternalSchool;
$dbh_InternalSchool->set_where("SchoolCode='" . quote_smart($SchoolCode) . "'");
if($result = $dbh_InternalSchool->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

