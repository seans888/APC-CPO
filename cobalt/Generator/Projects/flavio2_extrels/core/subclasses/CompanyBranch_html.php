<?php
require_once 'CompanyBranch_dd.php';
class CompanyBranch_html extends html
{
    function CompanyBranch_html()
    {
        $this->fields        = CompanyBranch_dd::load_dictionary();
        $this->relations     = CompanyBranch_dd::load_relationships();
        $this->subclasses    = CompanyBranch_dd::load_subclass_info();
        $this->table_name    = CompanyBranch_dd::$table_name;
        $this->readable_name = CompanyBranch_dd::$readable_name;
    }
}
