<?php
require 'components/get_listview_referrer.php';

require 'subclasses/resume_hdr.php';
$dbh_resume_hdr = new resume_hdr;
$dbh_resume_hdr->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_resume_hdr->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

require_once 'subclasses/resume_dtl.php';
$dbh_resume_hdr = new resume_dtl;
$dbh_resume_hdr->set_fields('response, questionnaire_id');
$dbh_resume_hdr->set_where("resume_hdr_id='" . quote_smart($id) . "'");
if($result = $dbh_resume_hdr->make_query()->result)
{
    $num_resume_dtl = $dbh_resume_hdr->num_rows;
    for($a=0; $a<$num_resume_dtl; $a++)
    {
        $data = $result->fetch_row();
        $cf_resume_dtl_response[$a] = $data[0];
        $cf_resume_dtl_questionnaire_id[$a] = $data[1];
    }
}

