<?php
require_once 'attendance_dd.php';
class attendance extends data_abstraction
{
    var $fields = array();


    function attendance()
    {
        $this->fields     = attendance_dd::load_dictionary();
        $this->relations  = attendance_dd::load_relationships();
        $this->subclasses = attendance_dd::load_subclass_info();
        $this->table_name = attendance_dd::$table_name;
        $this->tables     = attendance_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, date, time_in, time_out, student_id, hr_head');
            $this->set_values("?,?,?,?,?,?");

            $bind_params = array('isssss',
                                 &$this->fields['id']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['time_in']['value'],
                                 &$this->fields['time_out']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['hr_head']['value']);

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
            $this->set_update("date = ?, time_in = ?, time_out = ?, student_id = ?, hr_head = ?");
            $this->set_where("id = ?");

            $bind_params = array('sssssi',
                                 &$this->fields['date']['value'],
                                 &$this->fields['time_in']['value'],
                                 &$this->fields['time_out']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['hr_head']['value'],
                                 &$this->fields['id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function del($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("id = ?");

        $bind_params = array('i',
                             &$this->fields['id']['value']);

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
        $this->set_where("id = ?");

        $bind_params = array('i',
                             &$this->fields['id']['value']);

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
        $this->set_where("id = ? AND (id != ?)");

        $bind_params = array('ii',
                             &$this->fields['id']['value'],
                             &$this->fields['id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
