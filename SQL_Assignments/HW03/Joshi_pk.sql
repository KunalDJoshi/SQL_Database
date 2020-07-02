alter table contact_info add CONSTRAINT PK_contact_info PRIMARY KEY(phoneNumber,contactID);

-- command to verify that the changes were made to the table:-
desc contact_info;