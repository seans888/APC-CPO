<?php
require_once 'AlumniProfQualification_dd.php';
class AlumniProfQualification_html extends html
{
    function AlumniProfQualification_html()
    {
        $this->fields        = AlumniProfQualification_dd::load_dictionary();
        $this->relations     = AlumniProfQualification_dd::load_relationships();
        $this->subclasses    = AlumniProfQualification_dd::load_subclass_info();
        $this->table_name    = AlumniProfQualification_dd::$table_name;
        $this->readable_name = AlumniProfQualification_dd::$readable_name;
    }
}
