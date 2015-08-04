<?php
require_once 'schoolcourse_dd.php';
class schoolcourse extends data_abstraction
{
    var $fields = array();

    var $db_use='accom';

    function schoolcourse()
    {
        $this->fields     = schoolcourse_dd::load_dictionary();
        $this->relations  = schoolcourse_dd::load_relationships();
        $this->subclasses = schoolcourse_dd::load_subclass_info();
        $this->table_name = schoolcourse_dd::$table_name;
        $this->tables     = schoolcourse_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, SchoolCode, Course');
            $this->set_values("?,?,?");

            $bind_params = array('isi',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['SchoolCode']['value'],
                                 &$this->fields['Course']['value']);

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
            $this->set_update("SchoolCode = ?, Course = ?");
            $this->set_where("Id = ?");

            $bind_params = array('sii',
                                 &$this->fields['SchoolCode']['value'],
                                 &$this->fields['Course']['value'],
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
