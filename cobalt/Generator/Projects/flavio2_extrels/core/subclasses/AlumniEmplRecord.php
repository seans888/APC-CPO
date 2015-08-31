<?php
require_once 'AlumniEmplRecord_dd.php';
class AlumniEmplRecord extends data_abstraction
{
    var $fields = array();

    var $db_use='ACCOM';

    function AlumniEmplRecord()
    {
        $this->fields     = AlumniEmplRecord_dd::load_dictionary();
        $this->relations  = AlumniEmplRecord_dd::load_relationships();
        $this->subclasses = AlumniEmplRecord_dd::load_subclass_info();
        $this->table_name = AlumniEmplRecord_dd::$table_name;
        $this->tables     = AlumniEmplRecord_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, AlumniInfoId, CompanyBranchId, NoOfYearsInCompany, Position, NoOfYearsInPosition, Remarks, IsCurrentlyEmployed, IsAbsorbed, Email, ContactNo, StartDate, EndDate');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('iiiisisssssss',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['AlumniInfoId']['value'],
                                 &$this->fields['CompanyBranchId']['value'],
                                 &$this->fields['NoOfYearsInCompany']['value'],
                                 &$this->fields['Position']['value'],
                                 &$this->fields['NoOfYearsInPosition']['value'],
                                 &$this->fields['Remarks']['value'],
                                 &$this->fields['IsCurrentlyEmployed']['value'],
                                 &$this->fields['IsAbsorbed']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['ContactNo']['value'],
                                 &$this->fields['StartDate']['value'],
                                 &$this->fields['EndDate']['value']);

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
            $this->set_update("AlumniInfoId = ?, CompanyBranchId = ?, NoOfYearsInCompany = ?, Position = ?, NoOfYearsInPosition = ?, Remarks = ?, IsCurrentlyEmployed = ?, IsAbsorbed = ?, Email = ?, ContactNo = ?, StartDate = ?, EndDate = ?");
            $this->set_where("Id = ?");

            $bind_params = array('iiisisssssssi',
                                 &$this->fields['AlumniInfoId']['value'],
                                 &$this->fields['CompanyBranchId']['value'],
                                 &$this->fields['NoOfYearsInCompany']['value'],
                                 &$this->fields['Position']['value'],
                                 &$this->fields['NoOfYearsInPosition']['value'],
                                 &$this->fields['Remarks']['value'],
                                 &$this->fields['IsCurrentlyEmployed']['value'],
                                 &$this->fields['IsAbsorbed']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['ContactNo']['value'],
                                 &$this->fields['StartDate']['value'],
                                 &$this->fields['EndDate']['value'],
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
