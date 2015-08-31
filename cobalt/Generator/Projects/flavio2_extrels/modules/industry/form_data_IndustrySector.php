<?php
require 'components/get_listview_referrer.php';

require 'subclasses/IndustrySector.php';
$dbh_IndustrySector = new IndustrySector;
$dbh_IndustrySector->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_IndustrySector->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

