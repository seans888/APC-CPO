<?php
require 'components/get_listview_referrer.php';

require 'subclasses/final_paper_dtl.php';
$dbh_final_paper_dtl = new final_paper_dtl;
$dbh_final_paper_dtl->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_final_paper_dtl->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

