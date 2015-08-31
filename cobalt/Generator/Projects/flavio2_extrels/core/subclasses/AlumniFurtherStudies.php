<?php
require_once 'AlumniFurtherStudies_dd.php';
class AlumniFurtherStudies extends data_abstraction
{
    var $fields = array();

    var $db_use='ACCOM';

    function AlumniFurtherStudies()
    {
        $this->fields     = AlumniFurtherStudies_dd::load_dictionary();
        $this->relations  = AlumniFurtherStudies_dd::load_relationships();
        $this->subclasses = AlumniFurtherStudies_dd::load_subclass_info();
        $this->table_name = AlumniFurtherStudies_dd::$table_name;
        $this->tables     = AlumniFurtherStudies_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Id, AlumniInfoId, StudyType, Course, StartDate, EndDate, SchoolOrganization');
            $this->set_values("?,?,?,?,?,?,?");

            $bind_params = array('iisssss',
                                 &$this->fields['Id']['value'],
                                 &$this->fields['AlumniInfoId']['value'],
                                 &$this->fields['StudyType']['value'],
                                 &$this->fields['Course']['value'],
                                 &$this->fields['StartDate']['value'],
                                 &$this->fields['EndDate']['value'],
                                 &$this->fields['SchoolOrganization']['value']);

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
            $this->set_update("AlumniInfoId = ?, StudyType = ?, Course = ?, StartDate = ?, EndDate = ?, SchoolOrganization = ?");
            $this->set_where("Id = ?");

            $bind_params = array('isssssi',
                                 &$this->fields['AlumniInfoId']['value'],
                                 &$this->fields['StudyType']['value'],
                                 &$this->fields['Course']['value'],
                                 &$this->fields['StartDate']['value'],
                                 &$this->fields['EndDate']['value'],
                                 &$this->fields['SchoolOrganization']['value'],
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
