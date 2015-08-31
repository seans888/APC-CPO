<?php
require_once 'InternAssignment_dd.php';
class InternAssignment extends data_abstraction
{
    var $fields = array();

    var $db_use='ACCOM';

    function InternAssignment()
    {
        $this->fields     = InternAssignment_dd::load_dictionary();
        $this->relations  = InternAssignment_dd::load_relationships();
        $this->subclasses = InternAssignment_dd::load_subclass_info();
        $this->table_name = InternAssignment_dd::$table_name;
        $this->tables     = InternAssignment_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, student_id, CompanyBranchId, TermId, subject_id, StartDate, EndDate, Designation, Department, JobDescription, Status, primary_email, secondary_email, primary_mobile_no, secondary_mobile_no');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('isiiissssssssss',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['CompanyBranchId']['value'],
                                 &$this->fields['TermId']['value'],
                                 &$this->fields['subject_id']['value'],
                                 &$this->fields['StartDate']['value'],
                                 &$this->fields['EndDate']['value'],
                                 &$this->fields['Designation']['value'],
                                 &$this->fields['Department']['value'],
                                 &$this->fields['JobDescription']['value'],
                                 &$this->fields['Status']['value'],
                                 &$this->fields['primary_email']['value'],
                                 &$this->fields['secondary_email']['value'],
                                 &$this->fields['primary_mobile_no']['value'],
                                 &$this->fields['secondary_mobile_no']['value']);

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
            $this->set_update("student_id = ?, CompanyBranchId = ?, TermId = ?, subject_id = ?, StartDate = ?, EndDate = ?, Designation = ?, Department = ?, JobDescription = ?, Status = ?, primary_email = ?, secondary_email = ?, primary_mobile_no = ?, secondary_mobile_no = ?");
            $this->set_where("Id = ?");

            $bind_params = array('siiissssssssssi',
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['CompanyBranchId']['value'],
                                 &$this->fields['TermId']['value'],
                                 &$this->fields['subject_id']['value'],
                                 &$this->fields['StartDate']['value'],
                                 &$this->fields['EndDate']['value'],
                                 &$this->fields['Designation']['value'],
                                 &$this->fields['Department']['value'],
                                 &$this->fields['JobDescription']['value'],
                                 &$this->fields['Status']['value'],
                                 &$this->fields['primary_email']['value'],
                                 &$this->fields['secondary_email']['value'],
                                 &$this->fields['primary_mobile_no']['value'],
                                 &$this->fields['secondary_mobile_no']['value'],
                                 &$this->fields['Id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function del($param)
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
