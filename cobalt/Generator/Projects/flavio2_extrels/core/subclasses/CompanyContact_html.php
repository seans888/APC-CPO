<?php
require_once 'CompanyContact_dd.php';
class CompanyContact_html extends html
{
    function CompanyContact_html()
    {
        $this->fields        = CompanyContact_dd::load_dictionary();
        $this->relations     = CompanyContact_dd::load_relationships();
        $this->subclasses    = CompanyContact_dd::load_subclass_info();
        $this->table_name    = CompanyContact_dd::$table_name;
        $this->readable_name = CompanyContact_dd::$readable_name;
    }
}
