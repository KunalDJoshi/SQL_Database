alter table contact_info add column contactID varchar(9);
alter table contact_info add column suffixID varchar(9);
alter table contact_info add column titleID varchar(9);
alter table contact_info add column companyID varchar(9);
alter table contact_info add column phonetypeID varchar(9);

-- command to verify that the changes were made to the table:-
desc contact_info;