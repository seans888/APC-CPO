<?php
require_once 'alumnifurtherstudies_dd.php';
class alumnifurtherstudies_html extends html
{
    function alumnifurtherstudies_html()
    {
        $this->fields        = alumnifurtherstudies_dd::load_dictionary();
        $this->relations     = alumnifurtherstudies_dd::load_relationships();
        $this->subclasses    = alumnifurtherstudies_dd::load_subclass_info();
        $this->table_name    = alumnifurtherstudies_dd::$table_name;
        $this->readable_name = alumnifurtherstudies_dd::$readable_name;
    }
}
