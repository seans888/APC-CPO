<?php
require 'components/get_listview_referrer.php';

require 'subclasses/Country.php';
$dbh_Country = new Country;
$dbh_Country->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_Country->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

