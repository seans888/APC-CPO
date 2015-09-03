<?php
require 'components/get_listview_referrer.php';

require 'subclasses/resume_dtl.php';
$dbh_resume_dtl = new resume_dtl;
$dbh_resume_dtl->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_resume_dtl->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

