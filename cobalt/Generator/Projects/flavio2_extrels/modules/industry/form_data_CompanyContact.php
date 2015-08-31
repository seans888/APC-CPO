<?php
require 'components/get_listview_referrer.php';

require 'subclasses/CompanyContact.php';
$dbh_CompanyContact = new CompanyContact;
$dbh_CompanyContact->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_CompanyContact->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

