<?php
require_once 'PhilRegion_dd.php';
class PhilRegion extends data_abstraction
{
    var $fields = array();

    var $db_use='ACCOM';

    function PhilRegion()
    {
        $this->fields     = PhilRegion_dd::load_dictionary();
        $this->relations  = PhilRegion_dd::load_relationships();
        $this->subclasses = PhilRegion_dd::load_subclass_info();
        $this->table_name = PhilRegion_dd::$table_name;
        $this->tables     = PhilRegion_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, RegionCode, RegionName');
            $this->set_values("?,?,?");

            $bind_params = array('iss',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['RegionCode']['value'],
                                 &$this->fields['RegionName']['value']);

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
            $this->set_update("RegionCode = ?, RegionName = ?");
            $this->set_where("Id = ?");

            $bind_params = array('ssi',
                                 &$this->fields['RegionCode']['value'],
                                 &$this->fields['RegionName']['value'],
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
