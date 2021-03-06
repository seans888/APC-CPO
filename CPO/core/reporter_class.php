<?php
class reporter
{
    var $tables ='';
    var $session_array_name = '';
    var $report_title = '';
    var $html_subclass = '';
    var $data_subclass = '';
    var $result_page = '';
    var $cancel_page = '';
    var $header_bgcolor = '#999999';
    var $totals_bgcolor = '#999999';
    var $custom_join = '';
    var $arr_alias = array('b','c','d','e','f','g','h','i','j','k','l','m',
                           'n','o','p','q','r','s','t','u','v','w','x','y','z',
                           'aa','bb','cc','dd','ee','ff','gg','hh','ii','jj','kk','ll','mm',
                           'nn','oo','pp','qq','rr','ss','tt','uu','vv','ww','xx','yy','zz');

    var $arr_operators = array('EQUAL TO (=)',
                               'NOT EQUAL TO (!=)',
                               'LESS THAN (<)',
                               'LESS THAN OR EQUAL TO (<=)',
                               'GREATER THAN (>)',
                               'GREATER THAN OR EQUAL TO (>=)',
                               'CONTAINS (%..%)',
                               'STARTS WITH (..%)',
                               'ENDS WITH (%..)',
                               'BETWEEN (value1, value2)');

    var $arr_rpt_fields            = array(); //Ordered list of fields
    var $arr_rpt_fields_sql        = array(); //Key-value pairs of the field names to their corresponding query counterpart for SELECT/WHERE/GROUP purposes
    var $arr_rpt_column_alignments = array(); //Key-value pairs of field names to their default HTML table column alingment
    var $arr_rpt_column_formats    = array(); //Key-value pairs of field names to their default formatting for display
    var $arr_rpt_show_sum          = array(); //Key-value pairs of field names and their show sum setting (whether there will be a total at end row or not)

    function draw_report_interface_header()
    {
        echo '<table border="1">';
        echo '<tr >';
        echo '<th style="padding: 10px">
                Show Column<br>
                <a href="#" style="font-size: 11px" onClick="checkAll(); return false">Check All</a><br>
                <a href="#" style="font-size: 11px" onClick="uncheckAll();  return false">Uncheck All</a>
              </th>';
        echo '<th style="padding: 10px"> Field Name </th>';
        echo '<th style="padding: 10px"> Operator </th>';
        echo '<th style="padding: 10px"> Filter Value </th>';
        echo '<th style="padding: 10px">
                SUM <br/>';
        echo    '<a href="#" style="font-size: 11px" onClick="uncheckAllSum(); return false">Uncheck All</a>
             </th>';
        echo '<th style="padding: 10px">
                COUNT <br/>';
        echo    '<a href="#" style="font-size: 11px" onClick="uncheckAllCount(); return false">Uncheck All</a>
             </th>';
        echo '<th style="padding: 10px">
                GROUP BY <br />
                <a href="#" style="font-size: 11px" onClick="removeGroup(); return false">Remove</a><br>
             </th>';
        echo '</tr>';
        return $this;
    }

    function draw_report_interface_footer()
    {
        echo '</table>';
        return $this;
    }

    function get_custom_join()
    {
        $ENABLE_JOIN = FALSE;

        $alias_index = 0;

        //We don't just walk through $this->relations immediately because it has to follow the same alias as the
        //select fields, so we go through the same process and walk through each of the main table's fields, and
        //then look for included fields that are foreign keys, and get their info from $this->relations.
        foreach($this->fields as $dd_field_name=>$dd_field_data)
        {
            if($dd_field_data['rpt_in_report'] == TRUE && ($dd_field_data['attribute'] == 'foreign key' || $dd_field_data['attribute'] == 'primary&foreign key'))
            {
                foreach($this->relations as $relation_data)
                {
                    if($relation_data['link_child'] == $dd_field_name)
                    {
                        if($relation_data['type'] == '1-1')
                        {
                            if(!$ENABLE_JOIN)
                            {
                                $ENABLE_JOIN = TRUE;
                                $this->custom_join = $this->tables . ' a';
                            }

                            $alias = $this->arr_alias[$alias_index];
                            ++$alias_index;
                            $this->custom_join .= ' LEFT JOIN ' . $relation_data['table'] . ' ' . $alias . ' ON '
                                                 .'a.' . $relation_data['link_child'] . ' = ' . $alias . '.'
                                                 . $relation_data['link_parent'];
                        }
                    }
                }
            }
        }

        //If custom_join is still empty, that means no relationships were found; custom_join will default to the table
        if($this->custom_join == '')
        {
            $this->custom_join = $this->tables;
        }

        return $this;
    }

    function get_report_fields()
    {
        //Check if there are valid relationships
        $ENABLE_ALIAS = FALSE;
        foreach($this->relations as $relation_data)
        {
            if($relation_data['type'] == '1-1')
            {
                $ENABLE_ALIAS = TRUE;
                $alias_index = 0;
            }
        }

        foreach($this->fields as $dd_field_name=>$dd_field_data)
        {
            if($dd_field_data['rpt_in_report'] == TRUE && $dd_field_data['attribute'] != 'foreign key' && $dd_field_data['attribute'] != 'primary&foreign key')
            {
                $label = $dd_field_data['label'];
                $this->arr_rpt_fields[]                  = $label;
                $this->arr_rpt_column_alignments[$label] = $dd_field_data['rpt_column_alignment'];
                $this->arr_rpt_column_formats[$label]    = $dd_field_data['rpt_column_format'];
                $this->arr_rpt_show_sum[$label]          = $dd_field_data['rpt_show_sum'];

                if($ENABLE_ALIAS)
                {
                    $this->arr_rpt_fields_sql[$label] = 'a.'.$dd_field_name;
                }
                else
                {
                    $this->arr_rpt_fields_sql[$label] = $dd_field_name;
                }
            }

            if($dd_field_data['attribute'] == 'foreign key' || $dd_field_data['attribute'] == 'primary&foreign key')
            {
                foreach($this->relations as $relation_data)
                {
                    if($relation_data['type']=='1-1')
                    {
                        if($relation_data['link_child'] == $dd_field_name)
                        {
                            $obj_related_table = cobalt_load_class($relation_data['table']);
                            $arr_related_fields = $obj_related_table->fields;
                            $alias = $this->arr_alias[$alias_index];
                            ++$alias_index;
                            foreach($arr_related_fields as $rel_field_name=>$rel_field_data)
                            {
                                //We check if it is not a foreign key because we only want to include directly related tables.
                                if($rel_field_data['rpt_in_report'] == TRUE && $rel_field_data['attribute'] != 'foreign key')
                                {
                                    $label = '[' . ucwords(str_replace('_', ' ', $relation_data['table'])) . '] ' . $rel_field_data['label'];
                                    $this->arr_rpt_fields[]                  = $label;
                                    $this->arr_rpt_column_alignments[$label] = $rel_field_data['rpt_column_alignment'];
                                    $this->arr_rpt_column_formats[$label]    = $rel_field_data['rpt_column_format'];
                                    $this->arr_rpt_show_sum[$label]          = $rel_field_data['rpt_show_sum'];

                                    if($ENABLE_ALIAS)
                                    {
                                        $this->arr_rpt_fields_sql[$label] = $alias . '.' . $rel_field_name;
                                    }
                                    else
                                    {
                                        $this->arr_rpt_fields_sql[$label] = $rel_field_name;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return $this;
    }

    function print_settings()
    {
        $this->get_custom_join();

        echo '<pre>';
        echo '//*** START OF REPORT SETTINGS ARRAYS & JOIN CLAUSE *********<br />';
        echo '//The proper place for these is inside the _rpt subclass of this module<br />';
        echo '    function get_custom_join()<br />';
        echo '    {<br />';
        echo '        $this->custom_join = \'' . $this->custom_join . '\';<br />';
        echo '        return $this;<br />';
        echo '    }<br /><br />';
        echo '    function get_report_fields()<br />';
        echo '    {<br />';
        echo '        $this->arr_rpt_fields = array(';
        foreach($this->arr_rpt_fields as $field)
        {
            echo "'$field'," . "<br />" . '                                      ';
        }
        echo ');<br /><br />';

        echo '        $this->arr_rpt_fields_sql = array(';
        foreach($this->arr_rpt_fields_sql as $key=>$field)
        {
            echo "'$key'=>'$field'," . "<br />" . '                                          ';
        }
        echo ');<br /><br />';

        echo '        $this->arr_rpt_column_alignments = array(';
        foreach($this->arr_rpt_column_alignments as $key=>$field)
        {
            echo "'$key'=>'$field'," . "<br />" . '                                                 ';
        }
        echo ');<br /><br />';

        echo '        $this->arr_rpt_column_formats = array(';
        foreach($this->arr_rpt_column_formats as $key=>$field)
        {
            echo "'$key'=>'$field'," . "<br />" . '                                              ';
        }
        echo ');<br />';
        echo '        return $this;<br />';
        echo '    }<br /><br />';
        echo '</pre>';
        echo '//*** END OF REPORT SETTINGS ARRAYS & JOIN CLAUSE *********<br />';
        return $this;
    }
}