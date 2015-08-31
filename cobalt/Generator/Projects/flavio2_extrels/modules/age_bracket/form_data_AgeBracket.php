<?php
require 'components/get_listview_referrer.php';

require 'subclasses/AgeBracket.php';
$dbh_AgeBracket = new AgeBracket;
$dbh_AgeBracket->set_where("Id='" . quote_smart($Id) . "'");
if($result = $dbh_AgeBracket->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

