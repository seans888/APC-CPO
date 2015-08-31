<?php
require_once 'parent_attendance_dd.php';
class parent_attendance extends data_abstraction
{
    var $fields = array();


    function parent_attendance()
    {
        $this->fields     = parent_attendance_dd::load_dictionary();
        $this->relations  = parent_attendance_dd::load_relationships();
        $this->subclasses = parent_attendance_dd::load_subclass_info();
        $this->table_name = parent_attendance_dd::$table_name;
        $this->tables     = parent_attendance_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, family_id, student_id, relationship, name, email, mobile_no, date_time_registered');
            $this->set_values("?,?,?,?,?,?,?,?");

            $bind_params = array('iissssss',
                                 &$this->fields['id']['value'],
                                 &$this->fields['family_id']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['relationship']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['email']['value'],
                                 &$this->fields['mobile_no']['value'],
                                 &$this->fields['date_time_registered']['value']);

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
            $this->set_update("family_id = ?, student_id = ?, relationship = ?, name = ?, email = ?, mobile_no = ?, date_time_registered = ?");
            $this->set_where("id = ?");

            $bind_params = array('issssssi',
                                 &$this->fields['family_id']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['relationship']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['email']['value'],
                                 &$this->fields['mobile_no']['value'],
                                 &$this->fields['date_time_registered']['value'],
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
