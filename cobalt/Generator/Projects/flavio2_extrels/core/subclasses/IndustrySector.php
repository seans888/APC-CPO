<?php
require_once 'IndustrySector_dd.php';
class IndustrySector extends data_abstraction
{
    var $fields = array();

    var $db_use='ACCOM';

    function IndustrySector()
    {
        $this->fields     = IndustrySector_dd::load_dictionary();
        $this->relations  = IndustrySector_dd::load_relationships();
        $this->subclasses = IndustrySector_dd::load_subclass_info();
        $this->table_name = IndustrySector_dd::$table_name;
        $this->tables     = IndustrySector_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, IndustryName, IsActive');
            $this->set_values("?,?,?");

            $bind_params = array('iss',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['IndustryName']['value'],
                                 &$this->fields['IsActive']['value']);

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
            $this->set_update("IndustryName = ?, IsActive = ?");
            $this->set_where("Id = ?");

            $bind_params = array('ssi',
                                 &$this->fields['IndustryName']['value'],
                                 &$this->fields['IsActive']['value'],
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
