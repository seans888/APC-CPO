<?php
require 'components/get_listview_referrer.php';

require 'subclasses/internship.php';
$dbh_internship = new internship;
$dbh_internship->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_internship->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

