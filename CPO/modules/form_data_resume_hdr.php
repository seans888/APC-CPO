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

