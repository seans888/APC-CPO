<?php
require 'components/get_listview_referrer.php';

require 'subclasses/industrysector.php';
$dbh_industrysector = new industrysector;
$dbh_industrysector->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_industrysector->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

