<?php
require_once 'final_paper_hdr_dd.php';
class final_paper_hdr extends data_abstraction
{
    var $fields = array();


    function final_paper_hdr()
    {
        $this->fields     = final_paper_hdr_dd::load_dictionary();
        $this->relations  = final_paper_hdr_dd::load_relationships();
        $this->subclasses = final_paper_hdr_dd::load_subclass_info();
        $this->table_name = final_paper_hdr_dd::$table_name;
        $this->tables     = final_paper_hdr_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, attachment, date_submitted, rating, rcv_by, rcv_date, subj');
            $this->set_values("?,?,?,?,?,?,?");

            $bind_params = array('ississs',
                                 &$this->fields['id']['value'],
                                 &$this->fields['attachment']['value'],
                                 &$this->fields['date_submitted']['value'],
                                 &$this->fields['rating']['value'],
                                 &$this->fields['rcv_by']['value'],
                                 &$this->fields['rcv_date']['value'],
                                 &$this->fields['subj']['value']);

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
            $this->set_update("attachment = ?, date_submitted = ?, rating = ?, rcv_by = ?, rcv_date = ?, subj = ?");
            $this->set_where("id = ?");

            $bind_params = array('ssisssi',
                                 &$this->fields['attachment']['value'],
                                 &$this->fields['date_submitted']['value'],
                                 &$this->fields['rating']['value'],
                                 &$this->fields['rcv_by']['value'],
                                 &$this->fields['rcv_date']['value'],
                                 &$this->fields['subj']['value'],
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
