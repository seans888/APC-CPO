<?php
require 'components/get_listview_referrer.php';

require 'subclasses/SchoolCourse.php';
$dbh_SchoolCourse = new SchoolCourse;
$dbh_SchoolCourse->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_SchoolCourse->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

