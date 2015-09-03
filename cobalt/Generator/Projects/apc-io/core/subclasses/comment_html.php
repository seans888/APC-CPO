<?php
require_once 'comment_dd.php';
class comment_html extends html
{
    function comment_html()
    {
        $this->fields        = comment_dd::load_dictionary();
        $this->relations     = comment_dd::load_relationships();
        $this->subclasses    = comment_dd::load_subclass_info();
        $this->table_name    = comment_dd::$table_name;
        $this->readable_name = comment_dd::$readable_name;
    }
}
