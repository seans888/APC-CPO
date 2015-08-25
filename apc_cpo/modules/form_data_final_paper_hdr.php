<?php
require 'components/get_listview_referrer.php';

require 'subclasses/final_paper_hdr.php';
$dbh_final_paper_hdr = new final_paper_hdr;
$dbh_final_paper_hdr->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_final_paper_hdr->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date_submitted);
    $date_submitted_year = $data[0];
    $date_submitted_month = $data[1];
    $date_submitted_day = $data[2];
    $data = explode('-',$rcv_date);
    $rcv_date_year = $data[0];
    $rcv_date_month = $data[1];
    $rcv_date_day = $data[2];
}

require_once 'subclasses/final_paper_dtl.php';
$dbh_final_paper_hdr = new final_paper_dtl;
$dbh_final_paper_hdr->set_fields('questionnaire_id, response');
$dbh_final_paper_hdr->set_where("id='" . quote_smart($id) . "' AND final_paper_hdr_id='" . quote_smart($id) . "'");
if($result = $dbh_final_paper_hdr->make_query()->result)
{
    $num_final_paper_dtl = $dbh_final_paper_hdr->num_rows;
    for($a=0; $a<$num_final_paper_dtl; $a++)
    {
        $data = $result->fetch_row();
        $cf_final_paper_dtl_questionnaire_id[$a] = $data[0];
        $cf_final_paper_dtl_response[$a] = $data[1];
    }
}

