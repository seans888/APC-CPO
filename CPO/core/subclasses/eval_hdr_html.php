<?php
require_once 'eval_hdr_dd.php';
class eval_hdr_html extends html
{
    function eval_hdr_html()
    {
        $this->fields        = eval_hdr_dd::load_dictionary();
        $this->relations     = eval_hdr_dd::load_relationships();
        $this->subclasses    = eval_hdr_dd::load_subclass_info();
        $this->table_name    = eval_hdr_dd::$table_name;
        $this->readable_name = eval_hdr_dd::$readable_name;
    }
}
