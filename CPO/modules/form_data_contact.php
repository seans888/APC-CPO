<?php
require 'components/get_listview_referrer.php';

require 'subclasses/contact.php';
$dbh_contact = new contact;
$dbh_contact->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_contact->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

