<?php
require 'components/get_listview_referrer.php';

require 'subclasses/eval_dtl.php';
$dbh_eval_dtl = new eval_dtl;
$dbh_eval_dtl->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_eval_dtl->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

