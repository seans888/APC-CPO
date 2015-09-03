<?php
require 'components/get_listview_referrer.php';

require 'subclasses/schoolcourse.php';
$dbh_schoolcourse = new schoolcourse;
$dbh_schoolcourse->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_schoolcourse->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

