<?php
require_once 'system_settings_dd.php';
class system_settings_html extends html
{
    function system_settings_html()
    {
        $this->fields        = system_settings_dd::load_dictionary();
        $this->relations     = system_settings_dd::load_relationships();
        $this->subclasses    = system_settings_dd::load_subclass_info();
        $this->table_name    = system_settings_dd::$table_name;
        $this->readable_name = system_settings_dd::$readable_name;
    }
}
