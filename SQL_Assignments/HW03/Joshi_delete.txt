# Display first name, last name, contactID and phone number before deleting the records.
select firstName , lastName , contactID, phoneNumber  from contact_info;

# Delete records from the table
delete from contact_info where phoneNumber="585-544-1212"and contactID="333";
delete from contact_info where phoneNumber="585-532-4332" and contactID="555";

# Display first name, last name, contactID and phone number after deleting the records.
select firstName , lastName , contactID, phoneNumber  from contact_info;