<?php
require_once 'companycontact_dd.php';
class companycontact_html extends html
{
    function companycontact_html()
    {
        $this->fields        = companycontact_dd::load_dictionary();
        $this->relations     = companycontact_dd::load_relationships();
        $this->subclasses    = companycontact_dd::load_subclass_info();
        $this->table_name    = companycontact_dd::$table_name;
        $this->readable_name = companycontact_dd::$readable_name;
    }
}
