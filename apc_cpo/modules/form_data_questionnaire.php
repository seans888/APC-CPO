<?php
require 'components/get_listview_referrer.php';

require 'subclasses/questionnaire.php';
$dbh_questionnaire = new questionnaire;
$dbh_questionnaire->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_questionnaire->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

