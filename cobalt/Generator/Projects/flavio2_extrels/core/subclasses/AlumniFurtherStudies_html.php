<?php
require_once 'AlumniFurtherStudies_dd.php';
class AlumniFurtherStudies_html extends html
{
    function AlumniFurtherStudies_html()
    {
        $this->fields        = AlumniFurtherStudies_dd::load_dictionary();
        $this->relations     = AlumniFurtherStudies_dd::load_relationships();
        $this->subclasses    = AlumniFurtherStudies_dd::load_subclass_info();
        $this->table_name    = AlumniFurtherStudies_dd::$table_name;
        $this->readable_name = AlumniFurtherStudies_dd::$readable_name;
    }
}
