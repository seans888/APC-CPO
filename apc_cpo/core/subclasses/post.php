<?php
require_once 'post_dd.php';
class post extends data_abstraction
{
    var $fields = array();


    function post()
    {
        $this->fields     = post_dd::load_dictionary();
        $this->relations  = post_dd::load_relationships();
        $this->subclasses = post_dd::load_subclass_info();
        $this->table_name = post_dd::$table_name;
        $this->tables     = post_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, title, author, date, body, attach_file, upload_file');
            $this->set_values("?,?,?,?,?,?,?");

            $bind_params = array('issssss',
                                 &$this->fields['id']['value'],
                                 &$this->fields['title']['value'],
                                 &$this->fields['author']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['body']['value'],
                                 &$this->fields['attach_file']['value'],
                                 &$this->fields['upload_file']['value']);

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
            $this->set_update("title = ?, author = ?, date = ?, body = ?, attach_file = ?, upload_file = ?");
            $this->set_where("id = ?");

            $bind_params = array('ssssssi',
                                 &$this->fields['title']['value'],
                                 &$this->fields['author']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['body']['value'],
                                 &$this->fields['attach_file']['value'],
                                 &$this->fields['upload_file']['value'],
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
