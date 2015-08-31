<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('View AgeBracket');

$page_title       = 'ListView: AgeBracket';
$db_subclass      = 'AgeBracket';
$html_subclass    = 'AgeBracket_html';
$arr_pkey_name    = array('Id');
$results_per_page = LISTVIEW_RESULTS_PER_PAGE;

//user links / passport tags
$add_link         = 'Add AgeBracket';
$edit_link        = 'Edit AgeBracket';
$delete_link      = 'Delete AgeBracket';
$view_link        = 'View AgeBracket';

//pages - set to empty if you don't want to include them in the listview
$add_page         = 'add_AgeBracket.php';
$edit_page        = 'edit_AgeBracket.php';
$delete_page      = 'delete_AgeBracket.php';
$view_page        = 'detailview_AgeBracket.php';
$csv_page         = 'csv_AgeBracket.php';
$report_page      = 'reporter_AgeBracket.php';

//Extra entries under operations column (name of include file, not html code)
$operations_extra = '';

//Formatting and alignment options for data columns
$arr_formatting   = array();
$arr_alignment    = array();

//For custom join & select clause, you need to set the following variables so that the default
//listview components do not rely on DD data
$join_clause       = '';
$where_clause      = "";
$lst_fields        = '';
$arr_fields        = '';
$arr_field_labels  = '';
$lst_filter_fields = '';
$arr_filter_field_labels = '';
$arr_subtext_separators  = '';

//ORDER BY clause to use before a user clicks an ascending/descending column arrow.
$default_sort_order = '';

require 'components/listview_proc_head.php';
require 'components/listview_proc_html.php';
require 'components/listview_proc_query.php';
require 'components/listview_body_head.php';
require 'components/listview_body_data.php';
require 'components/listview_body_end.php';