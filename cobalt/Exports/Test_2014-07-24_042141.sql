OPTIMIZE TABLE `project`, `database_connection`, `table`, `table_fields`, `table_fields_list`, `table_fields_list_source_select`, `table_fields_list_source_where`, `table_pages`, `table_relations`,`table_fields_predefined_list`, `table_fields_predefined_list_items`;


INSERT INTO `project`(Project_ID, Project_Name, Client_Name, Project_Description, Base_Directory, Database_Connection_ID) VALUES('acXIoSSYQ61P8SYocbEYWA', 'Test', 'JV Roig', 'Cobalt test system', 'test', 'HkD8/3LrYOwHuq4nP15o3A');


INSERT INTO `database_connection`(DB_Connection_ID, Project_ID, DB_Connection_Name, Hostname, Username, Password, `Database`) VALUES('HkD8/3LrYOwHuq4nP15o3A', 'acXIoSSYQ61P8SYocbEYWA', 'con1', 'localhost', 'root', '','test');


INSERT INTO `table`(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('PoKNduqriciPwXaLWt4fXg', 'acXIoSSYQ61P8SYocbEYWA', 'HkD8/3LrYOwHuq4nP15o3A', 'office_docs', '');
INSERT INTO `table`(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('TjPUMP2F4XlnJgq4+NSkIg', 'acXIoSSYQ61P8SYocbEYWA', 'HkD8/3LrYOwHuq4nP15o3A', 'positions', '');
INSERT INTO `table`(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('hcqcZflcMyJOWqldjqamUQ', 'acXIoSSYQ61P8SYocbEYWA', 'HkD8/3LrYOwHuq4nP15o3A', 'salary_grade', '');
INSERT INTO `table`(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('tyUj8/4CbAd2PyDdTJu1fw', 'acXIoSSYQ61P8SYocbEYWA', 'HkD8/3LrYOwHuq4nP15o3A', 'employee_awards', '');
INSERT INTO `table`(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('azo5UXUlixoKBTtVrOqUmw', 'acXIoSSYQ61P8SYocbEYWA', 'HkD8/3LrYOwHuq4nP15o3A', 'employee_hobbies', '');
INSERT INTO `table`(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('7VFqczkwneTQLr82H1yZJw', 'acXIoSSYQ61P8SYocbEYWA', 'HkD8/3LrYOwHuq4nP15o3A', 'experiments', '');
INSERT INTO `table`(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('AlCkaSuCgtgzmazcgQqnwQ', 'acXIoSSYQ61P8SYocbEYWA', 'HkD8/3LrYOwHuq4nP15o3A', 'award', '');
INSERT INTO `table`(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('bAGds7UMRlnvMfqzuxu41g', 'acXIoSSYQ61P8SYocbEYWA', 'HkD8/3LrYOwHuq4nP15o3A', 'department', '');
INSERT INTO `table`(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('q4UMdk52Urz9FRBH4WyWuA', 'acXIoSSYQ61P8SYocbEYWA', 'HkD8/3LrYOwHuq4nP15o3A', 'employee', '');


INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('zMFxJG8LT/NZ7fl+zqRU0w', 'AlCkaSuCgtgzmazcgQqnwQ', 'award_id', 'integer', 'NO', '11', 'primary key', 'none', 'Award ID', 'no');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('IZOJfVzjUxGPk5B8RMKMaw', 'AlCkaSuCgtgzmazcgQqnwQ', 'title', 'varchar', 'NO', '255', '', 'textbox', 'Title', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('hSIO9gktN8mKjjkLkzbn8w', 'AlCkaSuCgtgzmazcgQqnwQ', 'description', 'text', 'NO', '0', '', 'textarea', 'Description', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('Fgs5FFq69i9tNFYOnZQqiA', 'bAGds7UMRlnvMfqzuxu41g', 'dept_id', 'integer', 'NO', '11', 'primary key', 'none', 'Dept ID', 'no');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('rUNyx0DMf4lHyqqJYGFVfQ', 'bAGds7UMRlnvMfqzuxu41g', 'dept_short_name', 'varchar', 'NO', '255', '', 'textbox', 'Dept Short Name', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('/lyiyZp91GToUXXzo0MLAw', 'bAGds7UMRlnvMfqzuxu41g', 'dept_official_name', 'varchar', 'NO', '255', '', 'textbox', 'Dept Official Name', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('y+YRbmSaMSwCI0eAzlI/WA', 'bAGds7UMRlnvMfqzuxu41g', 'dept_head', 'varchar', 'NO', '255', 'foreign key', 'drop-down list', 'Dept Head', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('0pQNBkA6J4OQA/KtRPgHgg', 'q4UMdk52Urz9FRBH4WyWuA', 'emp_id', 'varchar', 'NO', '255', 'primary key', 'textbox', 'Emp ID', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('MiSk2qQyXSkOBuR0CV+t1A', 'q4UMdk52Urz9FRBH4WyWuA', 'first_name', 'varchar', 'NO', '255', '', 'textbox', 'First Name', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('wYPgoX1bC0NdvzZG+QMs+g', 'q4UMdk52Urz9FRBH4WyWuA', 'middle_name', 'varchar', 'NO', '255', '', 'textbox', 'Middle Name', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('u4CBDvnzLl7lDa5T4OcXlg', 'q4UMdk52Urz9FRBH4WyWuA', 'last_name', 'varchar', 'NO', '255', '', 'textbox', 'Last Name', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('za38XYSEFN4l6MbXEEl9Aw', 'q4UMdk52Urz9FRBH4WyWuA', 'gender', 'varchar', 'NO', '255', 'none', 'radio buttons', 'Gender', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('ldlBU8T675sRIOVuJXB1IQ', 'q4UMdk52Urz9FRBH4WyWuA', 'civil_status', 'varchar', 'NO', '255', 'none', 'drop-down list', 'Civil Status', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('7CC16Pq0RsuzdkO/5eSWVg', 'q4UMdk52Urz9FRBH4WyWuA', 'birthday', 'date', 'NO', '0', '', 'date controls', 'Birthday', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('W94b19if5x+CRh0nx4RwVA', 'q4UMdk52Urz9FRBH4WyWuA', 'hiring_date', 'date', 'NO', '0', '', 'date controls', 'Hiring Date', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('WMPxF5qwu/+t/pjjFfJgrA', 'q4UMdk52Urz9FRBH4WyWuA', 'dept_id', 'integer', 'NO', '11', 'foreign key', 'drop-down list', 'Dept', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('if79J5hhs6dYRoWZog+XoA', 'q4UMdk52Urz9FRBH4WyWuA', 'position_id', 'integer', 'NO', '11', 'foreign key', 'drop-down list', 'Position', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('KgVRLKx4kNCizp6lAjj/sA', 'q4UMdk52Urz9FRBH4WyWuA', 'salary_grade_id', 'integer', 'NO', '11', 'foreign key', 'drop-down list', 'Salary Grade', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('ZUkesYPT5nhq7sWnf3jZ5g', 'tyUj8/4CbAd2PyDdTJu1fw', 'emp_id', 'varchar', 'NO', '255', 'primary&foreign key', 'drop-down list', 'Emp', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('uCgugnnlLMe8y4bnDYj4Yg', 'tyUj8/4CbAd2PyDdTJu1fw', 'auto_id', 'integer', 'NO', '11', 'primary key', 'none', 'Auto ID', 'no');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('2mZXWiJrK/NE81AJ+f1PGA', 'tyUj8/4CbAd2PyDdTJu1fw', 'award_id', 'integer', 'NO', '11', 'foreign key', 'drop-down list', 'Award', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('yG9IQzHHD3TelAhzYRRD5w', 'tyUj8/4CbAd2PyDdTJu1fw', 'date_received', 'date', 'NO', '0', '', 'date controls', 'Date Received', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('iNLOrsVC0rQt7NYs/7zkXA', 'azo5UXUlixoKBTtVrOqUmw', 'emp_id', 'varchar', 'NO', '255', 'primary&foreign key', 'drop-down list', 'Emp', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('m9UduJIYs0dpgG80oGPYiw', 'azo5UXUlixoKBTtVrOqUmw', 'auto_id', 'integer', 'NO', '11', 'primary key', 'none', 'Auto ID', 'no');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('gXn7jP5zSWrTM4/JS3dAog', 'azo5UXUlixoKBTtVrOqUmw', 'hobby', 'varchar', 'NO', '255', '', 'textbox', 'Hobby', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('ABHN1px3SwxgTRYgKq3T8A', 'PoKNduqriciPwXaLWt4fXg', 'code_1', 'varchar', 'NO', '4', 'primary key', 'textbox', 'Code 1', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('/xmzGvVWDfVtQlVl50HYiw', 'PoKNduqriciPwXaLWt4fXg', 'code_2', 'varchar', 'NO', '2', 'primary key', 'textbox', 'Code 2', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('qHyLmxtYwQTXEPyYkz9GWg', 'PoKNduqriciPwXaLWt4fXg', 'code_3', 'varchar', 'NO', '5', 'primary key', 'textbox', 'Code 3', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('G71KtVRyGbGhLf2G920AoQ', 'PoKNduqriciPwXaLWt4fXg', 'title', 'varchar', 'NO', '255', '', 'textbox', 'Title', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('2QwWWxQi8pC+z63wPrcymA', 'PoKNduqriciPwXaLWt4fXg', 'description', 'text', 'NO', '255', '', 'textarea', 'Description', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('1SxUdvtOaKRXa4Owrv4+Mg', 'PoKNduqriciPwXaLWt4fXg', 'file_upload', 'varchar', 'NO', '255', 'none', 'upload', 'File Upload', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('F3rFoUaZQO2dDPzlURc77g', 'TjPUMP2F4XlnJgq4+NSkIg', 'position_id', 'integer', 'NO', '11', 'primary key', 'none', 'Position ID', 'no');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('uAs3ixt+e7ljCzUIC3CXsQ', 'TjPUMP2F4XlnJgq4+NSkIg', 'title', 'varchar', 'NO', '255', '', 'textbox', 'Title', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('Ub3dEWgAFDpL7/RCcf3HfQ', 'TjPUMP2F4XlnJgq4+NSkIg', 'description', 'text', 'NO', '0', '', 'textarea', 'Description', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('9wQawsnIYUAoNJLQnzwbaQ', 'hcqcZflcMyJOWqldjqamUQ', 'salary_grade_id', 'integer', 'NO', '11', 'primary key', 'none', 'Salary Grade ID', 'no');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('JQGZxFVfOvoTrQ/vEKcuZw', 'hcqcZflcMyJOWqldjqamUQ', 'title', 'varchar', 'NO', '255', '', 'textbox', 'Title', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('gFShydrD+dKv0/8znQWu6A', 'hcqcZflcMyJOWqldjqamUQ', 'description', 'text', 'NO', '0', '', 'textarea', 'Description', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('453jwVLVrYPkq0fEH4ZnhQ', '7VFqczkwneTQLr82H1yZJw', 'experiment_id', 'integer', 'NO', '11', 'primary key', 'none', 'Experiment ID', 'no');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('Z3mFrNB3zaM+/+9Ul8cyeg', '7VFqczkwneTQLr82H1yZJw', 'date', 'date', 'NO', '0', '', 'date controls', 'Date', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('/1Io/fgAQIg7mnWWxAYpoA', '7VFqczkwneTQLr82H1yZJw', 'title', 'varchar', 'NO', '255', '', 'textbox', 'Title', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('8+HDWWl0uHQZ9E3+lGjbeQ', '7VFqczkwneTQLr82H1yZJw', 'description', 'text', 'NO', '255', '', 'textarea', 'Description', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('uLfx0Q9h45qjMrkXpd4fcw', '7VFqczkwneTQLr82H1yZJw', 'preliminary_result', 'varchar', 'NO', '255', 'none', 'upload', 'Preliminary Result', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('ytwty9wMUFqPIG3Sn7M7qQ', '7VFqczkwneTQLr82H1yZJw', 'intermediate_result', 'varchar', 'NO', '255', 'none', 'upload', 'Intermediate Result', 'yes');
INSERT INTO `table_fields`(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview) VALUES('qMWsCBIrup4HW43ouBLUrQ', '7VFqczkwneTQLr82H1yZJw', 'final_result', 'varchar', 'NO', '255', 'none', 'upload', 'Final Result', 'yes');


INSERT INTO `table_fields_list`(Field_ID, List_ID) VALUES('ldlBU8T675sRIOVuJXB1IQ', 'uh7AKk6r6NcYEM4fMqd2oQ');
INSERT INTO `table_fields_list`(Field_ID, List_ID) VALUES('za38XYSEFN4l6MbXEEl9Aw', 'mQcXkds5ICQUcURl4RRxwQ');


INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('y+YRbmSaMSwCI0eAzlI/WA', '4', 'wYPgoX1bC0NdvzZG+QMs+g', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('2mZXWiJrK/NE81AJ+f1PGA', '1', 'zMFxJG8LT/NZ7fl+zqRU0w', 'No');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('2mZXWiJrK/NE81AJ+f1PGA', '2', 'IZOJfVzjUxGPk5B8RMKMaw', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('KgVRLKx4kNCizp6lAjj/sA', '1', '9wQawsnIYUAoNJLQnzwbaQ', 'No');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('KgVRLKx4kNCizp6lAjj/sA', '2', 'JQGZxFVfOvoTrQ/vEKcuZw', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('if79J5hhs6dYRoWZog+XoA', '1', 'F3rFoUaZQO2dDPzlURc77g', 'No');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('if79J5hhs6dYRoWZog+XoA', '2', 'uAs3ixt+e7ljCzUIC3CXsQ', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('WMPxF5qwu/+t/pjjFfJgrA', '1', 'Fgs5FFq69i9tNFYOnZQqiA', 'No');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('WMPxF5qwu/+t/pjjFfJgrA', '2', 'rUNyx0DMf4lHyqqJYGFVfQ', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('y+YRbmSaMSwCI0eAzlI/WA', '1', '0pQNBkA6J4OQA/KtRPgHgg', 'No');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('y+YRbmSaMSwCI0eAzlI/WA', '2', 'u4CBDvnzLl7lDa5T4OcXlg', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('y+YRbmSaMSwCI0eAzlI/WA', '3', 'MiSk2qQyXSkOBuR0CV+t1A', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('iNLOrsVC0rQt7NYs/7zkXA', '1', '0pQNBkA6J4OQA/KtRPgHgg', 'No');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('iNLOrsVC0rQt7NYs/7zkXA', '2', 'u4CBDvnzLl7lDa5T4OcXlg', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('iNLOrsVC0rQt7NYs/7zkXA', '3', 'MiSk2qQyXSkOBuR0CV+t1A', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('iNLOrsVC0rQt7NYs/7zkXA', '4', 'wYPgoX1bC0NdvzZG+QMs+g', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('ZUkesYPT5nhq7sWnf3jZ5g', '1', '0pQNBkA6J4OQA/KtRPgHgg', 'No');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('ZUkesYPT5nhq7sWnf3jZ5g', '2', 'u4CBDvnzLl7lDa5T4OcXlg', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('ZUkesYPT5nhq7sWnf3jZ5g', '3', 'MiSk2qQyXSkOBuR0CV+t1A', 'Yes');
INSERT INTO `table_fields_list_source_select`(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('ZUkesYPT5nhq7sWnf3jZ5g', '4', 'wYPgoX1bC0NdvzZG+QMs+g', 'Yes');


INSERT INTO `table_fields_list_source_where`(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('2mZXWiJrK/NE81AJ+f1PGA', '0', '', '', '');
INSERT INTO `table_fields_list_source_where`(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('KgVRLKx4kNCizp6lAjj/sA', '0', '', '', '');
INSERT INTO `table_fields_list_source_where`(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('if79J5hhs6dYRoWZog+XoA', '0', '', '', '');
INSERT INTO `table_fields_list_source_where`(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('WMPxF5qwu/+t/pjjFfJgrA', '0', '', '', '');
INSERT INTO `table_fields_list_source_where`(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('y+YRbmSaMSwCI0eAzlI/WA', '0', '', '', '');
INSERT INTO `table_fields_list_source_where`(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('iNLOrsVC0rQt7NYs/7zkXA', '0', '', '', '');
INSERT INTO `table_fields_list_source_where`(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('ZUkesYPT5nhq7sWnf3jZ5g', '0', '', '', '');


INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('PoKNduqriciPwXaLWt4fXg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'docs/add_office_docs.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('PoKNduqriciPwXaLWt4fXg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'docs/reporter_result_office_docs.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('PoKNduqriciPwXaLWt4fXg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'docs/edit_office_docs.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('PoKNduqriciPwXaLWt4fXg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'docs/detailview_office_docs.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('PoKNduqriciPwXaLWt4fXg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'docs/csv_office_docs.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('PoKNduqriciPwXaLWt4fXg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'docs/reporter_pdfresult_office_docs.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('PoKNduqriciPwXaLWt4fXg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'docs/listview_office_docs.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('PoKNduqriciPwXaLWt4fXg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'docs/delete_office_docs.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('PoKNduqriciPwXaLWt4fXg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'docs/reporter_office_docs.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('TjPUMP2F4XlnJgq4+NSkIg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'hr/add_positions.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('TjPUMP2F4XlnJgq4+NSkIg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'hr/reporter_result_positions.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('TjPUMP2F4XlnJgq4+NSkIg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'hr/edit_positions.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('TjPUMP2F4XlnJgq4+NSkIg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'hr/detailview_positions.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('TjPUMP2F4XlnJgq4+NSkIg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'hr/csv_positions.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('TjPUMP2F4XlnJgq4+NSkIg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'hr/reporter_pdfresult_positions.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('TjPUMP2F4XlnJgq4+NSkIg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'hr/listview_positions.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('TjPUMP2F4XlnJgq4+NSkIg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'hr/delete_positions.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('TjPUMP2F4XlnJgq4+NSkIg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'hr/reporter_positions.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('hcqcZflcMyJOWqldjqamUQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'hr/add_salary_grade.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('hcqcZflcMyJOWqldjqamUQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'hr/reporter_result_salary_grade.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('hcqcZflcMyJOWqldjqamUQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'hr/edit_salary_grade.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('hcqcZflcMyJOWqldjqamUQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'hr/detailview_salary_grade.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('hcqcZflcMyJOWqldjqamUQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'hr/csv_salary_grade.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('hcqcZflcMyJOWqldjqamUQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'hr/reporter_pdfresult_salary_grade.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('hcqcZflcMyJOWqldjqamUQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'hr/listview_salary_grade.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('hcqcZflcMyJOWqldjqamUQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'hr/delete_salary_grade.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('hcqcZflcMyJOWqldjqamUQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'hr/reporter_salary_grade.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('tyUj8/4CbAd2PyDdTJu1fw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'hr/add_employee_awards.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('tyUj8/4CbAd2PyDdTJu1fw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'hr/reporter_result_employee_awards.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('tyUj8/4CbAd2PyDdTJu1fw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'hr/edit_employee_awards.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('tyUj8/4CbAd2PyDdTJu1fw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'hr/detailview_employee_awards.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('tyUj8/4CbAd2PyDdTJu1fw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'hr/csv_employee_awards.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('tyUj8/4CbAd2PyDdTJu1fw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'hr/reporter_pdfresult_employee_awards.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('tyUj8/4CbAd2PyDdTJu1fw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'hr/listview_employee_awards.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('tyUj8/4CbAd2PyDdTJu1fw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'hr/delete_employee_awards.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('tyUj8/4CbAd2PyDdTJu1fw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'hr/reporter_employee_awards.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('azo5UXUlixoKBTtVrOqUmw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'hr/add_employee_hobbies.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('azo5UXUlixoKBTtVrOqUmw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'hr/reporter_result_employee_hobbies.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('azo5UXUlixoKBTtVrOqUmw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'hr/edit_employee_hobbies.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('azo5UXUlixoKBTtVrOqUmw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'hr/detailview_employee_hobbies.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('azo5UXUlixoKBTtVrOqUmw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'hr/csv_employee_hobbies.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('azo5UXUlixoKBTtVrOqUmw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'hr/reporter_pdfresult_employee_hobbies.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('azo5UXUlixoKBTtVrOqUmw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'hr/listview_employee_hobbies.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('azo5UXUlixoKBTtVrOqUmw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'hr/delete_employee_hobbies.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('azo5UXUlixoKBTtVrOqUmw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'hr/reporter_employee_hobbies.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('7VFqczkwneTQLr82H1yZJw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'experiments/add_experiments.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('7VFqczkwneTQLr82H1yZJw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'experiments/reporter_result_experiments.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('7VFqczkwneTQLr82H1yZJw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'experiments/edit_experiments.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('7VFqczkwneTQLr82H1yZJw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'experiments/detailview_experiments.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('7VFqczkwneTQLr82H1yZJw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'experiments/csv_experiments.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('7VFqczkwneTQLr82H1yZJw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'experiments/reporter_pdfresult_experiments.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('7VFqczkwneTQLr82H1yZJw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'experiments/listview_experiments.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('7VFqczkwneTQLr82H1yZJw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'experiments/delete_experiments.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('7VFqczkwneTQLr82H1yZJw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'experiments/reporter_experiments.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('AlCkaSuCgtgzmazcgQqnwQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'hr/add_award.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('AlCkaSuCgtgzmazcgQqnwQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'hr/reporter_result_award.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('AlCkaSuCgtgzmazcgQqnwQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'hr/edit_award.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('AlCkaSuCgtgzmazcgQqnwQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'hr/detailview_award.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('AlCkaSuCgtgzmazcgQqnwQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'hr/csv_award.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('AlCkaSuCgtgzmazcgQqnwQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'hr/reporter_pdfresult_award.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('AlCkaSuCgtgzmazcgQqnwQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'hr/listview_award.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('AlCkaSuCgtgzmazcgQqnwQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'hr/delete_award.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('AlCkaSuCgtgzmazcgQqnwQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'hr/reporter_award.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('bAGds7UMRlnvMfqzuxu41g', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'hr/add_department.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('bAGds7UMRlnvMfqzuxu41g', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'hr/reporter_result_department.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('bAGds7UMRlnvMfqzuxu41g', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'hr/edit_department.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('bAGds7UMRlnvMfqzuxu41g', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'hr/detailview_department.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('bAGds7UMRlnvMfqzuxu41g', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'hr/csv_department.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('bAGds7UMRlnvMfqzuxu41g', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'hr/reporter_pdfresult_department.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('bAGds7UMRlnvMfqzuxu41g', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'hr/listview_department.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('bAGds7UMRlnvMfqzuxu41g', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'hr/delete_department.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('bAGds7UMRlnvMfqzuxu41g', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'hr/reporter_department.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('q4UMdk52Urz9FRBH4WyWuA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'hr/add_employee.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('q4UMdk52Urz9FRBH4WyWuA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'hr/reporter_result_employee.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('q4UMdk52Urz9FRBH4WyWuA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'hr/edit_employee.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('q4UMdk52Urz9FRBH4WyWuA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'hr/detailview_employee.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('q4UMdk52Urz9FRBH4WyWuA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'hr/csv_employee.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('q4UMdk52Urz9FRBH4WyWuA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'hr/reporter_pdfresult_employee.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('q4UMdk52Urz9FRBH4WyWuA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'hr/listview_employee.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('q4UMdk52Urz9FRBH4WyWuA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'hr/delete_employee.php');
INSERT INTO `table_pages`(Table_ID, Page_ID, Path_Filename) VALUES('q4UMdk52Urz9FRBH4WyWuA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'hr/reporter_employee.php');


INSERT INTO `table_relations`(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('IXlh4f5jnKpxQuXau6WkTA', 'acXIoSSYQ61P8SYocbEYWA', 'ONE-to-ONE', '0pQNBkA6J4OQA/KtRPgHgg', 'y+YRbmSaMSwCI0eAzlI/WA', 'employee=>department', 'last_name, first_name, middle_name');
INSERT INTO `table_relations`(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('7FYjF0y3Qm7leLMxoBCOLw', 'acXIoSSYQ61P8SYocbEYWA', 'ONE-to-ONE', 'Fgs5FFq69i9tNFYOnZQqiA', 'WMPxF5qwu/+t/pjjFfJgrA', 'department=>employee', 'dept_short_name');
INSERT INTO `table_relations`(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('osagR1m7m4QVKz9unWoRTw', 'acXIoSSYQ61P8SYocbEYWA', 'ONE-to-MANY', '0pQNBkA6J4OQA/KtRPgHgg', 'iNLOrsVC0rQt7NYs/7zkXA', 'employee=>employee_hobbies', '');
INSERT INTO `table_relations`(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('cXD7nRvcFa9QVZERCJ0Hhg', 'acXIoSSYQ61P8SYocbEYWA', 'ONE-to-MANY', '0pQNBkA6J4OQA/KtRPgHgg', 'ZUkesYPT5nhq7sWnf3jZ5g', 'employee=>employee_awards', '');
INSERT INTO `table_relations`(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('DRHh7EGh+tYo9azPAWW+VQ', 'acXIoSSYQ61P8SYocbEYWA', 'ONE-to-ONE', 'zMFxJG8LT/NZ7fl+zqRU0w', '2mZXWiJrK/NE81AJ+f1PGA', 'award=>employee_awards', 'title');
INSERT INTO `table_relations`(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('/PFRHCHsxI6TqtDOMjDV3g', 'acXIoSSYQ61P8SYocbEYWA', 'ONE-to-ONE', '9wQawsnIYUAoNJLQnzwbaQ', 'KgVRLKx4kNCizp6lAjj/sA', 'salary_grade=>employee', 'title');
INSERT INTO `table_relations`(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('72ytsnEYgwPX4cg1shLE0A', 'acXIoSSYQ61P8SYocbEYWA', 'ONE-to-ONE', 'F3rFoUaZQO2dDPzlURc77g', 'if79J5hhs6dYRoWZog+XoA', 'positions=>employee', 'title');
INSERT INTO `table_relations`(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('eDPJwXgG1/eopSxhnglcew', 'acXIoSSYQ61P8SYocbEYWA', 'ONE-to-ONE', '0pQNBkA6J4OQA/KtRPgHgg', 'iNLOrsVC0rQt7NYs/7zkXA', 'employee=>employee_hobbies', 'last_name, first_name, middle_name');
INSERT INTO `table_relations`(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('JAvG8/N/Flv+ysNWOisHvw', 'acXIoSSYQ61P8SYocbEYWA', 'ONE-to-ONE', '0pQNBkA6J4OQA/KtRPgHgg', 'ZUkesYPT5nhq7sWnf3jZ5g', 'employee=>employee_awards', 'last_name, first_name, middle_name');


INSERT INTO `table_fields_predefined_list`(List_ID, Project_ID, List_Name, Remarks) VALUES('mQcXkds5ICQUcURl4RRxwQ', 'acXIoSSYQ61P8SYocbEYWA', 'Male/Female', 'Male/Female gender list');
INSERT INTO `table_fields_predefined_list`(List_ID, Project_ID, List_Name, Remarks) VALUES('37oksyqkTfXzj3vfovd+dg', 'acXIoSSYQ61P8SYocbEYWA', 'On/Off', 'On/Off status list');
INSERT INTO `table_fields_predefined_list`(List_ID, Project_ID, List_Name, Remarks) VALUES('u2dqTVbsZlyoBdTn0SfNBA', 'acXIoSSYQ61P8SYocbEYWA', 'TRUE/FALSE', 'TRUE/FALSE list');
INSERT INTO `table_fields_predefined_list`(List_ID, Project_ID, List_Name, Remarks) VALUES('slX2QYnY/G18OvsZIy0NxQ', 'acXIoSSYQ61P8SYocbEYWA', 'M/F', 'Single character male/female gender list');
INSERT INTO `table_fields_predefined_list`(List_ID, Project_ID, List_Name, Remarks) VALUES('aesas6MFBexs6HW5aaE3ew', 'acXIoSSYQ61P8SYocbEYWA', 'Yes/No', 'Yes/No list');
INSERT INTO `table_fields_predefined_list`(List_ID, Project_ID, List_Name, Remarks) VALUES('K6uQIwwJjFpcPumRodOqhg', 'acXIoSSYQ61P8SYocbEYWA', 'Y/N', 'Single character yes/no list');
INSERT INTO `table_fields_predefined_list`(List_ID, Project_ID, List_Name, Remarks) VALUES('uh7AKk6r6NcYEM4fMqd2oQ', 'acXIoSSYQ61P8SYocbEYWA', 'Civil Status', 'Status of persons as recognized by law');


INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('mQcXkds5ICQUcURl4RRxwQ', '1', 'Male');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('mQcXkds5ICQUcURl4RRxwQ', '2', 'Female');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('37oksyqkTfXzj3vfovd+dg', '1', 'On');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('37oksyqkTfXzj3vfovd+dg', '2', 'Off');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('u2dqTVbsZlyoBdTn0SfNBA', '1', 'TRUE');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('u2dqTVbsZlyoBdTn0SfNBA', '2', 'FALSE');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('slX2QYnY/G18OvsZIy0NxQ', '1', 'M');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('slX2QYnY/G18OvsZIy0NxQ', '2', 'F');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('aesas6MFBexs6HW5aaE3ew', '1', 'Yes');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('aesas6MFBexs6HW5aaE3ew', '2', 'No');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('K6uQIwwJjFpcPumRodOqhg', '1', 'Y');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('K6uQIwwJjFpcPumRodOqhg', '2', 'N');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('uh7AKk6r6NcYEM4fMqd2oQ', '1', 'Single');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('uh7AKk6r6NcYEM4fMqd2oQ', '2', 'Married');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('uh7AKk6r6NcYEM4fMqd2oQ', '3', 'Divorced');
INSERT INTO `table_fields_predefined_list_items`(List_ID, Number, List_Item) VALUES('uh7AKk6r6NcYEM4fMqd2oQ', '4', 'Widow/Widower');


