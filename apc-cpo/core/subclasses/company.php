<?php
require_once 'company_dd.php';
class company extends data_abstraction
{
    var $fields = array();

    var $db_host='localhost';
    var $db_user='root';
    var $db_use='accom';

    function company()
    {
        $this->fields     = company_dd::load_dictionary();
        $this->relations  = company_dd::load_relationships();
        $this->subclasses = company_dd::load_subclass_info();
        $this->table_name = company_dd::$table_name;
        $this->tables     = company_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, CompanyName, IndustrySectorId, WebsiteUrl, Email, IsIndustryPartner, Status, DateCreated');
            $this->set_values("?,?,?,?,?,?,?,?");

            $bind_params = array('isisssss',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['CompanyName']['value'],
                                 &$this->fields['IndustrySectorId']['value'],
                                 &$this->fields['WebsiteUrl']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['IsIndustryPartner']['value'],
                                 &$this->fields['Status']['value'],
                                 &$this->fields['DateCreated']['value']);

            $this->stmt_prepare($bind_params);
        }

        $this->stmt_execute();
        return $this;
    }

    function edit($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('UPDATE');
            $this->set_update("CompanyName = ?, IndustrySectorId = ?, WebsiteUrl = ?, Email = ?, IsIndustryPartner = ?, Status = ?, DateCreated = ?");
            $this->set_where("Id = ?");

            $bind_params = array('sisssssi',
                                 &$this->fields['CompanyName']['value'],
                                 &$this->fields['IndustrySectorId']['value'],
                                 &$this->fields['WebsiteUrl']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['IsIndustryPartner']['value'],
                                 &$this->fields['Status']['value'],
                                 &$this->fields['DateCreated']['value'],
                                 &$this->fields['Id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function del($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Id = ?");

        $bind_params = array('i',
                             &$this->fields['Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;

    }

    function select()
    {
        $this->set_query_type('SELECT');
        $this->exec_fetch('array');
        return $this;
    }

    function check_uniqueness($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('SELECT');
        $this->set_where("Id = ?");

        $bind_params = array('i',
                             &$this->fields['Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }

    function check_uniqueness_for_editing($param)
    {
        $this->set_parameters($param);


        $this->set_query_type('SELECT');
        $this->set_where("Id = ? AND (Id != ?)");

        $bind_params = array('ii',
                             &$this->fields['Id']['value'],
                             &$this->fields['Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
