<?php
require 'components/get_listview_referrer.php';

require 'subclasses/EmploymentStatus.php';
$dbh_EmploymentStatus = new EmploymentStatus;
$dbh_EmploymentStatus->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_EmploymentStatus->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

