<?php
require_once 'CompanyBranch_dd.php';
class CompanyBranch extends data_abstraction
{
    var $fields = array();

    var $db_use='ACCOM';

    function CompanyBranch()
    {
        $this->fields     = CompanyBranch_dd::load_dictionary();
        $this->relations  = CompanyBranch_dd::load_relationships();
        $this->subclasses = CompanyBranch_dd::load_subclass_info();
        $this->table_name = CompanyBranch_dd::$table_name;
        $this->tables     = CompanyBranch_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, CompanyId, CompanyBranchName, Address, MunicipalityCity, ProvinceState, Region, Country, PostalCode, PhoneNo1, PhoneNo2, WebsiteUrl, Email, DateCreated, Status, DateStart, DateEnd');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('iisssssssssssssss',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['CompanyId']['value'],
                                 &$this->fields['CompanyBranchName']['value'],
                                 &$this->fields['Address']['value'],
                                 &$this->fields['MunicipalityCity']['value'],
                                 &$this->fields['ProvinceState']['value'],
                                 &$this->fields['Region']['value'],
                                 &$this->fields['Country']['value'],
                                 &$this->fields['PostalCode']['value'],
                                 &$this->fields['PhoneNo1']['value'],
                                 &$this->fields['PhoneNo2']['value'],
                                 &$this->fields['WebsiteUrl']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['DateCreated']['value'],
                                 &$this->fields['Status']['value'],
                                 &$this->fields['DateStart']['value'],
                                 &$this->fields['DateEnd']['value']);

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
            $this->set_update("CompanyId = ?, CompanyBranchName = ?, Address = ?, MunicipalityCity = ?, ProvinceState = ?, Region = ?, Country = ?, PostalCode = ?, PhoneNo1 = ?, PhoneNo2 = ?, WebsiteUrl = ?, Email = ?, DateCreated = ?, Status = ?, DateStart = ?, DateEnd = ?");
            $this->set_where("Id = ?");

            $bind_params = array('isssssssssssssssi',
                                 &$this->fields['CompanyId']['value'],
                                 &$this->fields['CompanyBranchName']['value'],
                                 &$this->fields['Address']['value'],
                                 &$this->fields['MunicipalityCity']['value'],
                                 &$this->fields['ProvinceState']['value'],
                                 &$this->fields['Region']['value'],
                                 &$this->fields['Country']['value'],
                                 &$this->fields['PostalCode']['value'],
                                 &$this->fields['PhoneNo1']['value'],
                                 &$this->fields['PhoneNo2']['value'],
                                 &$this->fields['WebsiteUrl']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['DateCreated']['value'],
                                 &$this->fields['Status']['value'],
                                 &$this->fields['DateStart']['value'],
                                 &$this->fields['DateEnd']['value'],
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
