<?php
require_once 'post_dd.php';
class post_html extends html
{
    function post_html()
    {
        $this->fields        = post_dd::load_dictionary();
        $this->relations     = post_dd::load_relationships();
        $this->subclasses    = post_dd::load_subclass_info();
        $this->table_name    = post_dd::$table_name;
        $this->readable_name = post_dd::$readable_name;
    }
}
