update contact_info set contactID=111, suffixID=1, titleID=1, companyID=123, phonetypeID=1 where firstName like "Jacob";
update contact_info set contactID=222, titleID =2, companyID=123, phonetypeID=1 where firstName like "Charlene";
update contact_info set contactID=333, titleID =5, companyID=456, phonetypeID=2 where firstName like "Karson";
update contact_info set contactID=444, suffixID=2, titleID=4, companyID=231, phonetypeID=1 where firstName like "Les";
update contact_info set contactID=555, titleID =3, phonetypeID=3 where firstName like "Rachel";


-- command to print the first name, last name and the value of all attribute values that were added to the table:-
select firstName , lastName , contactID, suffixID, titleID, companyID, phonetypeID from contact_info;