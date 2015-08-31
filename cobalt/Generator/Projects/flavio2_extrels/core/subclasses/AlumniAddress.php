<?php
require_once 'AlumniAddress_dd.php';
class AlumniAddress extends data_abstraction
{
    var $fields = array();

    var $db_use='ACCOM';

    function AlumniAddress()
    {
        $this->fields     = AlumniAddress_dd::load_dictionary();
        $this->relations  = AlumniAddress_dd::load_relationships();
        $this->subclasses = AlumniAddress_dd::load_subclass_info();
        $this->table_name = AlumniAddress_dd::$table_name;
        $this->tables     = AlumniAddress_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, AlumniInfoId, AddressType, Address, MunicipalityCity, ProvinceState, Region, Country, PostalCode, IsCurrent');
            $this->set_values("?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('iisssssssi',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['AlumniInfoId']['value'],
                                 &$this->fields['AddressType']['value'],
                                 &$this->fields['Address']['value'],
                                 &$this->fields['MunicipalityCity']['value'],
                                 &$this->fields['ProvinceState']['value'],
                                 &$this->fields['Region']['value'],
                                 &$this->fields['Country']['value'],
                                 &$this->fields['PostalCode']['value'],
                                 &$this->fields['IsCurrent']['value']);

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
            $this->set_update("AlumniInfoId = ?, AddressType = ?, Address = ?, MunicipalityCity = ?, ProvinceState = ?, Region = ?, Country = ?, PostalCode = ?, IsCurrent = ?");
            $this->set_where("Id = ?");

            $bind_params = array('isssssssii',
                                 &$this->fields['AlumniInfoId']['value'],
                                 &$this->fields['AddressType']['value'],
                                 &$this->fields['Address']['value'],
                                 &$this->fields['MunicipalityCity']['value'],
                                 &$this->fields['ProvinceState']['value'],
                                 &$this->fields['Region']['value'],
                                 &$this->fields['Country']['value'],
                                 &$this->fields['PostalCode']['value'],
                                 &$this->fields['IsCurrent']['value'],
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
