<?php
require_once 'resume_dtl_dd.php';
class resume_dtl extends data_abstraction
{
    var $fields = array();


    function resume_dtl()
    {
        $this->fields     = resume_dtl_dd::load_dictionary();
        $this->relations  = resume_dtl_dd::load_relationships();
        $this->subclasses = resume_dtl_dd::load_subclass_info();
        $this->table_name = resume_dtl_dd::$table_name;
        $this->tables     = resume_dtl_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, response, resume_hdr_id, questionnaire_id');
            $this->set_values("?,?,?,?");

            $bind_params = array('isii',
                                 &$this->fields['id']['value'],
                                 &$this->fields['response']['value'],
                                 &$this->fields['resume_hdr_id']['value'],
                                 &$this->fields['questionnaire_id']['value']);

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
            $this->set_update("id = ?, response = ?, resume_hdr_id = ?, questionnaire_id = ?");
            $this->set_where("id = ?");

            $bind_params = array('isiii',
                                 &$this->fields['id']['value'],
                                 &$this->fields['response']['value'],
                                 &$this->fields['resume_hdr_id']['value'],
                                 &$this->fields['questionnaire_id']['value'],
                                 $param['orig_id']);

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
        //Next two lines just to get the orig_ pkey(s) from $param
        $this->escape_arguments($param);
        extract($param);

        $this->set_query_type('SELECT');
        $this->set_where("id = ? AND (id != '$orig_id')");

        $bind_params = array('i',
                             &$this->fields['id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
