<?php
require_once 'user_role_links_dd.php';
class user_role_links_html extends html
{
    function user_role_links_html()
    {
        $this->fields        = user_role_links_dd::load_dictionary();
        $this->relations     = user_role_links_dd::load_relationships();
        $this->subclasses    = user_role_links_dd::load_subclass_info();
        $this->table_name    = user_role_links_dd::$table_name;
        $this->readable_name = user_role_links_dd::$readable_name;
    }
}
