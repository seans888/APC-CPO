<?php
require_once 'eval_dtl_dd.php';
class eval_dtl_html extends html
{
    function eval_dtl_html()
    {
        $this->fields        = eval_dtl_dd::load_dictionary();
        $this->relations     = eval_dtl_dd::load_relationships();
        $this->subclasses    = eval_dtl_dd::load_subclass_info();
        $this->table_name    = eval_dtl_dd::$table_name;
        $this->readable_name = eval_dtl_dd::$readable_name;
    }
}
