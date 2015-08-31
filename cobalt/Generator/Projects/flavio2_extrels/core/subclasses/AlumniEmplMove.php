<?php
require_once 'AlumniEmplMove_dd.php';
class AlumniEmplMove extends data_abstraction
{
    var $fields = array();

    var $db_use='ACCOM';

    function AlumniEmplMove()
    {
        $this->fields     = AlumniEmplMove_dd::load_dictionary();
        $this->relations  = AlumniEmplMove_dd::load_relationships();
        $this->subclasses = AlumniEmplMove_dd::load_subclass_info();
        $this->table_name = AlumniEmplMove_dd::$table_name;
        $this->tables     = AlumniEmplMove_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, AlumniEmplRecordId, DateEffective, Designation, SalaryRange, Remarks');
            $this->set_values("?,?,?,?,?,?");

            $bind_params = array('iissss',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['AlumniEmplRecordId']['value'],
                                 &$this->fields['DateEffective']['value'],
                                 &$this->fields['Designation']['value'],
                                 &$this->fields['SalaryRange']['value'],
                                 &$this->fields['Remarks']['value']);

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
            $this->set_update("AlumniEmplRecordId = ?, DateEffective = ?, Designation = ?, SalaryRange = ?, Remarks = ?");
            $this->set_where("Id = ?");

            $bind_params = array('issssi',
                                 &$this->fields['AlumniEmplRecordId']['value'],
                                 &$this->fields['DateEffective']['value'],
                                 &$this->fields['Designation']['value'],
                                 &$this->fields['SalaryRange']['value'],
                                 &$this->fields['Remarks']['value'],
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
