<?php
require 'components/get_listview_referrer.php';

require 'subclasses/eval_hdr.php';
$dbh_eval_hdr = new eval_hdr;
$dbh_eval_hdr->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_eval_hdr->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date_submit);
    $date_submit_year = $data[0];
    $date_submit_month = $data[1];
    $date_submit_day = $data[2];
    $data = explode('-',$date_eval);
    $date_eval_year = $data[0];
    $date_eval_month = $data[1];
    $date_eval_day = $data[2];
    $data = explode('-',$date_discussed);
    $date_discussed_year = $data[0];
    $date_discussed_month = $data[1];
    $date_discussed_day = $data[2];
    $data = explode('-',$rcv_date);
    $rcv_date_year = $data[0];
    $rcv_date_month = $data[1];
    $rcv_date_day = $data[2];
}

