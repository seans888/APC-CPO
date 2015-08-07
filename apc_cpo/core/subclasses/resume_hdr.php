<?php
require_once 'resume_hdr_dd.php';
class resume_hdr extends data_abstraction
{
    var $fields = array();


    function resume_hdr()
    {
        $this->fields     = resume_hdr_dd::load_dictionary();
        $this->relations  = resume_hdr_dd::load_relationships();
        $this->subclasses = resume_hdr_dd::load_subclass_info();
        $this->table_name = resume_hdr_dd::$table_name;
        $this->tables     = resume_hdr_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, mobile_num, personal_email, website, picture');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issss',
                                 &$this->fields['id']['value'],
                                 &$this->fields['mobile_num']['value'],
                                 &$this->fields['personal_email']['value'],
                                 &$this->fields['website']['value'],
                                 &$this->fields['picture']['value']);

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
            $this->set_update("mobile_num = ?, personal_email = ?, website = ?, picture = ?");
            $this->set_where("id = ?");

            $bind_params = array('ssssi',
                                 &$this->fields['mobile_num']['value'],
                                 &$this->fields['personal_email']['value'],
                                 &$this->fields['website']['value'],
                                 &$this->fields['picture']['value'],
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
