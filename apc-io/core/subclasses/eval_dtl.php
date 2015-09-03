<?php
require_once 'eval_dtl_dd.php';
class eval_dtl extends data_abstraction
{
    var $fields = array();


    function eval_dtl()
    {
        $this->fields     = eval_dtl_dd::load_dictionary();
        $this->relations  = eval_dtl_dd::load_relationships();
        $this->subclasses = eval_dtl_dd::load_subclass_info();
        $this->table_name = eval_dtl_dd::$table_name;
        $this->tables     = eval_dtl_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, questionnaire_id, eval_hdr_id, response_rating, response_detail');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('iiiis',
                                 &$this->fields['id']['value'],
                                 &$this->fields['questionnaire_id']['value'],
                                 &$this->fields['eval_hdr_id']['value'],
                                 &$this->fields['response_rating']['value'],
                                 &$this->fields['response_detail']['value']);

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
            $this->set_update("questionnaire_id = ?, eval_hdr_id = ?, response_rating = ?, response_detail = ?");
            $this->set_where("id = ?");

            $bind_params = array('iiisi',
                                 &$this->fields['questionnaire_id']['value'],
                                 &$this->fields['eval_hdr_id']['value'],
                                 &$this->fields['response_rating']['value'],
                                 &$this->fields['response_detail']['value'],
                                 &$this->fields['id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
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

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("eval_hdr_id = ?");

        $bind_params = array('i',
                             &$this->fields['eval_hdr_id']['value']);

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
	
	function delete_data($key){
        $this->set_query_type('DELETE');
        $this->set_where("eval_hdr_id = ?");

        $bind_params = array('i',
                             $key);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
	}
}
