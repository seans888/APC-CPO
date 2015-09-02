<?php
require_once 'contact_dd.php';
class contact extends data_abstraction
{
    var $fields = array();

    var $db_use='accom';

    function contact()
    {
        $this->fields     = contact_dd::load_dictionary();
        $this->relations  = contact_dd::load_relationships();
        $this->subclasses = contact_dd::load_subclass_info();
        $this->table_name = contact_dd::$table_name;
        $this->tables     = contact_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, LastName, FirstName, MiddleName, PhoneNo, MobileNo, Email, Designation');
            $this->set_values("?,?,?,?,?,?,?,?");

            $bind_params = array('isssssss',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['LastName']['value'],
                                 &$this->fields['FirstName']['value'],
                                 &$this->fields['MiddleName']['value'],
                                 &$this->fields['PhoneNo']['value'],
                                 &$this->fields['MobileNo']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['Designation']['value']);

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
            $this->set_update("LastName = ?, FirstName = ?, MiddleName = ?, PhoneNo = ?, MobileNo = ?, Email = ?, Designation = ?");
            $this->set_where("Id = ?");

            $bind_params = array('sssssssi',
                                 &$this->fields['LastName']['value'],
                                 &$this->fields['FirstName']['value'],
                                 &$this->fields['MiddleName']['value'],
                                 &$this->fields['PhoneNo']['value'],
                                 &$this->fields['MobileNo']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['Designation']['value'],
                                 &$this->fields['Id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
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

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("");

        $bind_params = array('',
                             );

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
