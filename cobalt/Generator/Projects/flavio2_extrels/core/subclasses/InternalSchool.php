<?php
require_once 'InternalSchool_dd.php';
class InternalSchool extends data_abstraction
{
    var $fields = array();

    var $db_use='ACCOM';

    function InternalSchool()
    {
        $this->fields     = InternalSchool_dd::load_dictionary();
        $this->relations  = InternalSchool_dd::load_relationships();
        $this->subclasses = InternalSchool_dd::load_subclass_info();
        $this->table_name = InternalSchool_dd::$table_name;
        $this->tables     = InternalSchool_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('SchoolCode, SchoolName');
            $this->set_values("?,?");

            $bind_params = array('ss',
                                 &$this->fields['SchoolCode']['value'],
                                 &$this->fields['SchoolName']['value']);

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
            $this->set_update("SchoolCode = ?, SchoolName = ?");
            $this->set_where("SchoolCode = ?");

            $bind_params = array('sss',
                                 &$this->fields['SchoolCode']['value'],
                                 &$this->fields['SchoolName']['value'],
                                 $param['orig_SchoolCode']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function del($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("SchoolCode = ?");

        $bind_params = array('s',
                             &$this->fields['SchoolCode']['value']);

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
        $this->set_where("SchoolCode = ?");

        $bind_params = array('s',
                             &$this->fields['SchoolCode']['value']);

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
        //Next two lines just to get the orig_ pkey(s) from $param
        $this->escape_arguments($param);
        extract($param);

        $this->set_query_type('SELECT');
        $this->set_where("SchoolCode = ? AND (SchoolCode != '$orig_SchoolCode')");

        $bind_params = array('s',
                             &$this->fields['SchoolCode']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
