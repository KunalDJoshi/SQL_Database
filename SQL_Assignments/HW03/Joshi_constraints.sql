alter table contact_info modify firstName varchar(20) NOT NULL;
alter table contact_info modify lastName varchar(25) NOT NULL;
alter table contact_info modify email varchar(30) NOT NULL;
alter table contact_info modify phoneDescription varchar(10) NOT NULL; 

-- command to verify that the changes were made to the table:-
desc contact_info;