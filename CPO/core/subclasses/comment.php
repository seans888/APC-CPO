<?php
require_once 'comment_dd.php';
class comment extends data_abstraction
{
    var $fields = array();


    function comment()
    {
        $this->fields     = comment_dd::load_dictionary();
        $this->relations  = comment_dd::load_relationships();
        $this->subclasses = comment_dd::load_subclass_info();
        $this->table_name = comment_dd::$table_name;
        $this->tables     = comment_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, body, date, person_id, post_id');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issii',
                                 &$this->fields['id']['value'],
                                 &$this->fields['body']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['person_id']['value'],
                                 &$this->fields['post_id']['value']);

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
            $this->set_update("body = ?, date = ?, person_id = ?, post_id = ?");
            $this->set_where("id = ?");

            $bind_params = array('ssiii',
                                 &$this->fields['body']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['person_id']['value'],
                                 &$this->fields['post_id']['value'],
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
