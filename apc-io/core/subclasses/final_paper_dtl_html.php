<?php
require_once 'final_paper_dtl_dd.php';
class final_paper_dtl_html extends html
{
    function final_paper_dtl_html()
    {
        $this->fields        = final_paper_dtl_dd::load_dictionary();
        $this->relations     = final_paper_dtl_dd::load_relationships();
        $this->subclasses    = final_paper_dtl_dd::load_subclass_info();
        $this->table_name    = final_paper_dtl_dd::$table_name;
        $this->readable_name = final_paper_dtl_dd::$readable_name;
    }
	
	function draw_multifield_auto($label, $arr_multifield, $num_particulars_var=null, $particulars_count_var=null, $particular_button_var=null)
    {
        if($num_particulars_var==null) $num_particulars_var='num_particulars';
        if($particulars_count_var==null) $particulars_count_var='particulars_count';
        if($particular_button_var==null) $particular_button_var='particular_button';

        global $$num_particulars_var, $$particulars_count_var;

        //Get minimum according to DD
        $minimum=0;
        foreach($this->relations as $rel_info)
        {
            if($rel_info['type'] == 'M-1')
            {
                $minimum= $rel_info['minimum'];
            }
        }

        echo '<fieldset class="fieldset_group">' . "\r\n";
        if(empty($label))
        {
            //no title, no legend
        }
        else
        {
            echo '<legend>' . $label . '</legend>';
        }

        //if($$num_particulars_var>0) ;
        //else $$num_particulars_var=$$particulars_count_var;
        if(is_numeric($$num_particulars_var))
        {
            $$particulars_count_var = $$num_particulars_var;
        }
        else
        {
            $$num_particulars_var = $$particulars_count_var;
        }

        if($$num_particulars_var<$minimum)
        {
            $$num_particulars_var   = $minimum;
            $$particulars_count_var = $minimum;
        }

        if($this->detail_view==FALSE)
        {
            //if($$num_particulars_var!=0) echo "<input type=hidden name='" . $particulars_count_var . "' value=". $$num_particulars_var . ">\r\n";
            //else  echo "<input type=hidden name='" . $particulars_count_var . "' value=1>\r\n";
            echo "<input type=\"hidden\" name=\"" . $particulars_count_var . "\" value=\"". $$num_particulars_var . "\">\r\n";
        }

        echo '<table class="input_form"><tr><td>&nbsp;</td>' . "\r\n";

        //Count how many fields need to be drawn,
        //then loop the <td></td> tags with the corresponding labels.
        $numTDPairs = count($arr_multifield['field_labels']);
        for($a=0;$a<$numTDPairs;++$a)
        {
            echo '<td><p class="multifield_detail_view_label">' . $arr_multifield['field_labels'][$a] . '</p></td>' . "\r\n";
        }
        echo '</tr>' . "\r\n";

        for($a=0;$a<$$num_particulars_var;++$a)
        {
            echo '<tr><td class="label">&nbsp;' . ($a + 1) . '&nbsp;</td>' . "\r\n";

            for($b=0;$b<$numTDPairs;++$b)
            {
                init_var($this->mf_col_align[$b]);
                if($this->mf_col_align[$b] == '') $this->mf_col_align[$b]=='left';
                echo '<td align="' . $this->mf_col_align[$b] . '">';

                if($this->detail_view)
                {
                    echo '<p class="multifield_detail_view">';
                }
                else
                {
                    echo '<p>';
                }

                $this->$arr_multifield['field_controls'][$b]($arr_multifield['field_parameters'][$b], $a);
                echo '</p></td>' . "\r\n";

            }

            echo '</tr>' . "\r\n";
        }

        if($$num_particulars_var < 1)
        {
            $colspan = $numTDPairs + 1;
            if(isset($this->mf_label))
            {
                $label = $this->mf_label;
            }
            else
            {
                $label = $this->readable_name;
            }

            echo '<tr><td colspan="' . $colspan . '"><p class="multifield_detail_view">';

            if($this->detail_view)
            {
                echo '[No Data]';
            }
            else
            {
                echo '[Items for ' . $label . ' is set to zero. No data will be submitted for this section]';
            }
            echo '</p></td></tr>';
        }

        echo "</table>\r\n";

        echo '</fieldset>' . "\r\n";
        echo '<br>' . "\r\n";

        return $this;
    }
}
