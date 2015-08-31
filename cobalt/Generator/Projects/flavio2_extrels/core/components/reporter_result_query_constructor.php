<?php
$sess_var = $reporter->session_array_name;

if(empty($_SESSION[$sess_var]['token']) || rawurldecode($_GET['token']) != $_SESSION[$sess_var]['token'])
{
    echo '<script>';
    echo 'close();';
    echo '</script>';
    die();
}

$show_field  = $_SESSION[$sess_var]['show_field'];
$sum_field   = $_SESSION[$sess_var]['sum_field'];
$count_field = $_SESSION[$sess_var]['count_field'];
$group_field = $_SESSION[$sess_var]['group_field'];
$operator    = $_SESSION[$sess_var]['operator'];
$text_field  = $_SESSION[$sess_var]['text_field'];

//Misc settings
$html_subclass  = $reporter->html_subclass;
$data_subclass  = $reporter->data_subclass;
$header_bgcolor = $reporter->header_bgcolor;
$totals_bgcolor = $reporter->totals_bgcolor;
$title          = $reporter->report_title;

//Customized join clause for this report
$custom_join = $reporter->get_custom_join()->custom_join;

//Ordered list of fields
$arr_fields_by_order = $reporter->arr_rpt_fields;

//Key-value pairs of the field names to their corresponding query counterpart for SELECT/WHERE/GROUP purposes
$arr_fields = $reporter->arr_rpt_fields_sql;

//Key-value pairs of field names to their default HTML table column alingment
$arr_base_column_alignments = $reporter->arr_rpt_column_alignments;

//Key-value pairs of field names to their default formatting for display
$arr_base_column_formats = $reporter->arr_rpt_column_formats;

//Key-value pairs of field names and their show sum setting (whether there will be a total at end row or not)
$arr_base_show_sum = $reporter->arr_rpt_show_sum;

//Construct select fields
$select_fields         = '';
$arr_result_fields     = array();
$arr_column_labels     = array();
$arr_column_alignments = array();
$arr_column_formats    = array();
$arr_show_sum          = array();
if(is_array($show_field))
{
    foreach($show_field as $field_name)
    {
        $has_been_added = FALSE;
        $new_entry='';
        $column_alias = $arr_fields[$field_name];

        if(@in_array($field_name, $sum_field))
        {
            $new_entry = "SUM(" . $arr_fields[$field_name] . ") AS `sum_" . $column_alias . "`";
            make_list($select_fields, $new_entry, ', ', FALSE);
            $arr_result_fields[] = 'sum_' . $column_alias;
            $arr_column_labels[] = 'SUM of ' . $field_name;
            $arr_column_alignments[] = 'right';
            $arr_column_formats[] = 'number_format2';
            $has_been_added = TRUE;
        }

        if(@in_array($field_name, $count_field))
        {
            $new_entry = "COUNT(" . $arr_fields[$field_name] . ") AS `count_" . $column_alias . "`";
            make_list($select_fields, $new_entry, ', ', FALSE);
            $arr_result_fields[] = 'count_' . $column_alias;
            $arr_column_labels[] = 'COUNT of ' . $field_name;
            $arr_column_alignments[] = 'center';
            $arr_column_formats[] = 'number_format0';
            $has_been_added = TRUE;
        }

        if($has_been_added)
        {
            //No need to add to the select fields, already has a count and/or sum counterpart
        }
        else
        {
            $new_entry = $arr_fields[$field_name] . " AS `" . $column_alias . "`";
            make_list($select_fields, $new_entry, ', ', FALSE);
            $arr_result_fields[]     = $column_alias;
            $arr_column_labels[]     = $field_name;
            $arr_column_alignments[] = $arr_base_column_alignments[$field_name];
            $arr_column_formats[]    = $arr_base_column_formats[$field_name];
            $arr_show_sum[]          = $arr_base_show_sum[$field_name];
        }
    }
}


//Construct where
$where_clause='';
if(is_array($operator))
{
    foreach($operator as $key=>$op_text)
    {
        if($op_text!='')
        {
            $new_entry='';
            switch($op_text)
            {

                case 'EQUAL TO (=)': $new_entry = $arr_fields[$arr_fields_by_order[$key]] . " = '" . $text_field[$key] . "'";
                                     break;

                case 'NOT EQUAL TO (!=)': $new_entry = $arr_fields[$arr_fields_by_order[$key]] . " != '" . $text_field[$key] . "'";
                                     break;

                case 'LESS THAN (<)': $new_entry = $arr_fields[$arr_fields_by_order[$key]] . " < '" . $text_field[$key] . "'";
                                     break;

                case 'LESS THAN OR EQUAL TO (<=)': $new_entry = $arr_fields[$arr_fields_by_order[$key]] . " <= '" . $text_field[$key] . "'";
                                     break;

                case 'GREATER THAN (>)': $new_entry = $arr_fields[$arr_fields_by_order[$key]] . " > '" . $text_field[$key] . "'";
                                     break;

                case 'GREATER THAN OR EQUAL TO (>=)': $new_entry = $arr_fields[$arr_fields_by_order[$key]] . " >= '" . $text_field[$key] . "'";
                                     break;

                case 'CONTAINS (%..%)': $new_entry = $arr_fields[$arr_fields_by_order[$key]] . " LIKE '%" . $text_field[$key] . "%'";
                                     break;

                case 'STARTS WITH (..%)': $new_entry = $arr_fields[$arr_fields_by_order[$key]] . " LIKE '" . $text_field[$key] . "%'";
                                     break;

                case 'ENDS WITH (%..)': $new_entry = $arr_fields[$arr_fields_by_order[$key]] . " LIKE '%" . $text_field[$key] . "'";
                                     break;

                case 'BETWEEN (value1, value2)':
                                        $data = explode(',', $text_field[$key]);
                                        $value1 = trim($data[0]);
                                        $value2 = trim($data[1]);

                                        $new_entry = $arr_fields[$arr_fields_by_order[$key]] . " BETWEEN '" . $value1 . "' AND '" . $value2 . "'";
                                     break;
            }
            make_list($where_clause, $new_entry, ' AND ', FALSE);
        }
    }
}

//Construct group by - actually just needs to identify the field to use for group by clause
if(isset($arr_fields[$group_field]))
{
    $group_clause = $arr_fields[$group_field];
}
else
{
    $group_clause = '';
}

$obj_custom_report = cobalt_load_class($data_subclass);
$obj_custom_report->custom_select_fields = $select_fields;
$obj_custom_report->custom_where_clause = $where_clause;
$obj_custom_report->custom_group_by = $group_clause;
$obj_custom_report->custom_join = $custom_join;
$obj_custom_report->custom_report();
