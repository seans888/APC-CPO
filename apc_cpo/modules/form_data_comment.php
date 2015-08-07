<?php
require 'components/get_listview_referrer.php';

require 'subclasses/comment.php';
$dbh_comment = new comment;
$dbh_comment->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_comment->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date);
    $date_year = $data[0];
    $date_month = $data[1];
    $date_day = $data[2];
}

