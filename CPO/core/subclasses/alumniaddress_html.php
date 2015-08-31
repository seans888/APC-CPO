<?php
require_once 'alumniaddress_dd.php';
class alumniaddress_html extends html
{
    function alumniaddress_html()
    {
        $this->fields        = alumniaddress_dd::load_dictionary();
        $this->relations     = alumniaddress_dd::load_relationships();
        $this->subclasses    = alumniaddress_dd::load_subclass_info();
        $this->table_name    = alumniaddress_dd::$table_name;
        $this->readable_name = alumniaddress_dd::$readable_name;
    }
}
