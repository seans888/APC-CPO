<?php
require 'components/get_listview_referrer.php';

require 'subclasses/companycontact.php';
$dbh_companycontact = new companycontact;
$dbh_companycontact->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_companycontact->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

