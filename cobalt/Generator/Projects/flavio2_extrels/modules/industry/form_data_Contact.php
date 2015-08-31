<?php
require 'components/get_listview_referrer.php';

require 'subclasses/Contact.php';
$dbh_Contact = new Contact;
$dbh_Contact->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_Contact->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

