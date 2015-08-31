<?php
require_once 'alumniemplrecord_dd.php';
class alumniemplrecord_html extends html
{
    function alumniemplrecord_html()
    {
        $this->fields        = alumniemplrecord_dd::load_dictionary();
        $this->relations     = alumniemplrecord_dd::load_relationships();
        $this->subclasses    = alumniemplrecord_dd::load_subclass_info();
        $this->table_name    = alumniemplrecord_dd::$table_name;
        $this->readable_name = alumniemplrecord_dd::$readable_name;
    }
}
