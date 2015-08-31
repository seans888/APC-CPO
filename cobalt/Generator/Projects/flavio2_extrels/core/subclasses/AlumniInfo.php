<?php
require_once 'AlumniInfo_dd.php';
class AlumniInfo extends data_abstraction
{
    var $fields = array();

    var $db_use='ACCOM';

    function AlumniInfo()
    {
        $this->fields     = AlumniInfo_dd::load_dictionary();
        $this->relations  = AlumniInfo_dd::load_relationships();
        $this->subclasses = AlumniInfo_dd::load_subclass_info();
        $this->table_name = AlumniInfo_dd::$table_name;
        $this->tables     = AlumniInfo_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, student_id, LastName, FirstName, MiddleName, BirthDate, Nationality, CivilStatus, Religion, Address, MunicipalityCity, ProvinceState, Region, Country, IsAbroad, PostalCode, ContactStatus, EmploymentStatus, LastUpdate');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('issssssssssssssssss',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['LastName']['value'],
                                 &$this->fields['FirstName']['value'],
                                 &$this->fields['MiddleName']['value'],
                                 &$this->fields['BirthDate']['value'],
                                 &$this->fields['Nationality']['value'],
                                 &$this->fields['CivilStatus']['value'],
                                 &$this->fields['Religion']['value'],
                                 &$this->fields['Address']['value'],
                                 &$this->fields['MunicipalityCity']['value'],
                                 &$this->fields['ProvinceState']['value'],
                                 &$this->fields['Region']['value'],
                                 &$this->fields['Country']['value'],
                                 &$this->fields['IsAbroad']['value'],
                                 &$this->fields['PostalCode']['value'],
                                 &$this->fields['ContactStatus']['value'],
                                 &$this->fields['EmploymentStatus']['value'],
                                 &$this->fields['LastUpdate']['value']);

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
            $this->set_update("student_id = ?, LastName = ?, FirstName = ?, MiddleName = ?, BirthDate = ?, Nationality = ?, CivilStatus = ?, Religion = ?, Address = ?, MunicipalityCity = ?, ProvinceState = ?, Region = ?, Country = ?, IsAbroad = ?, PostalCode = ?, ContactStatus = ?, EmploymentStatus = ?, LastUpdate = ?");
            $this->set_where("Id = ?");

            $bind_params = array('ssssssssssssssssssi',
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['LastName']['value'],
                                 &$this->fields['FirstName']['value'],
                                 &$this->fields['MiddleName']['value'],
                                 &$this->fields['BirthDate']['value'],
                                 &$this->fields['Nationality']['value'],
                                 &$this->fields['CivilStatus']['value'],
                                 &$this->fields['Religion']['value'],
                                 &$this->fields['Address']['value'],
                                 &$this->fields['MunicipalityCity']['value'],
                                 &$this->fields['ProvinceState']['value'],
                                 &$this->fields['Region']['value'],
                                 &$this->fields['Country']['value'],
                                 &$this->fields['IsAbroad']['value'],
                                 &$this->fields['PostalCode']['value'],
                                 &$this->fields['ContactStatus']['value'],
                                 &$this->fields['EmploymentStatus']['value'],
                                 &$this->fields['LastUpdate']['value'],
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
