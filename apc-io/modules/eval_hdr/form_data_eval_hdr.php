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
    if(count($data) == 3)
    {
        $date_submit_year = $data[0];
        $date_submit_month = $data[1];
        $date_submit_day = $data[2];
    }
    $data = explode('-',$date_eval);
    if(count($data) == 3)
    {
        $date_eval_year = $data[0];
        $date_eval_month = $data[1];
        $date_eval_day = $data[2];
    }
    $data = explode('-',$date_discussed);
    if(count($data) == 3)
    {
        $date_discussed_year = $data[0];
        $date_discussed_month = $data[1];
        $date_discussed_day = $data[2];
    }
    $data = explode('-',$rcv_date);
    if(count($data) == 3)
    {
        $rcv_date_year = $data[0];
        $rcv_date_month = $data[1];
        $rcv_date_day = $data[2];
    }
}

require_once 'subclasses/eval_dtl.php';
$dbh_eval_hdr = new eval_dtl;
$dbh_eval_hdr->set_fields('questionnaire_id, response_rating, response_detail');
$dbh_eval_hdr->set_where("eval_hdr_id='" . quote_smart($id) . "'");
if($result = $dbh_eval_hdr->make_query()->result)
{
    $num_eval_dtl = $dbh_eval_hdr->num_rows;
    for($a=0; $a<$num_eval_dtl; $a++)
    {
        $data = $result->fetch_row();
        $cf_eval_dtl_questionnaire_id[$a] = $data[0];
        $cf_eval_dtl_response_rating[$a] = $data[1];
        $cf_eval_dtl_response_detail[$a] = $data[2];
    }
}

