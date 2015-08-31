<?php
require_once 'Contact_dd.php';
class Contact_html extends html
{
    function Contact_html()
    {
        $this->fields        = Contact_dd::load_dictionary();
        $this->relations     = Contact_dd::load_relationships();
        $this->subclasses    = Contact_dd::load_subclass_info();
        $this->table_name    = Contact_dd::$table_name;
        $this->readable_name = Contact_dd::$readable_name;
    }
}
