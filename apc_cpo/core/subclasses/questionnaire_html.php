<?php
require_once 'questionnaire_dd.php';
class questionnaire_html extends html
{
    function questionnaire_html()
    {
        $this->fields        = questionnaire_dd::load_dictionary();
        $this->relations     = questionnaire_dd::load_relationships();
        $this->subclasses    = questionnaire_dd::load_subclass_info();
        $this->table_name    = questionnaire_dd::$table_name;
        $this->readable_name = questionnaire_dd::$readable_name;
    }
}
