<?php
require_once 'eval_hdr_dd.php';
class eval_hdr extends data_abstraction
{
    var $fields = array();

    var $db_host='localhost';
    var $db_user='root';
    var $db_use='apc-cpo';

    function eval_hdr()
    {
        $this->fields     = eval_hdr_dd::load_dictionary();
        $this->relations  = eval_hdr_dd::load_relationships();
        $this->subclasses = eval_hdr_dd::load_subclass_info();
        $this->table_name = eval_hdr_dd::$table_name;
        $this->tables     = eval_hdr_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, date_submit, date_eval, school_yr, date_discussed, subj, industry_prof, rcv_by, rcv_date, internship_id');
            $this->set_values("?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('issssssssi',
                                 &$this->fields['id']['value'],
                                 &$this->fields['date_submit']['value'],
                                 &$this->fields['date_eval']['value'],
                                 &$this->fields['school_yr']['value'],
                                 &$this->fields['date_discussed']['value'],
                                 &$this->fields['subj']['value'],
                                 &$this->fields['industry_prof']['value'],
                                 &$this->fields['rcv_by']['value'],
                                 &$this->fields['rcv_date']['value'],
                                 &$this->fields['internship_id']['value']);

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
            $this->set_update("date_submit = ?, date_eval = ?, school_yr = ?, date_discussed = ?, subj = ?, industry_prof = ?, rcv_by = ?, rcv_date = ?, internship_id = ?");
            $this->set_where("id = ?");

            $bind_params = array('ssssssssii',
                                 &$this->fields['date_submit']['value'],
                                 &$this->fields['date_eval']['value'],
                                 &$this->fields['school_yr']['value'],
                                 &$this->fields['date_discussed']['value'],
                                 &$this->fields['subj']['value'],
                                 &$this->fields['industry_prof']['value'],
                                 &$this->fields['rcv_by']['value'],
                                 &$this->fields['rcv_date']['value'],
                                 &$this->fields['internship_id']['value'],
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
