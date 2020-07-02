-- use jobs database
use jobs;

#Question1
-- Question1 UNION 
select  companyname, division, listing from interview where listing="y"
UNION
select  companyname, division, listing from interview where listing="n";

#Question2
-- Question2 by using inner join and USING keyword
select  companyname, division, statecode from employer inner join interview
using(companyname, division);

-- Question2 by using WHERE clause
select emp.companyname, emp.division, statecode from employer emp, interview ivw where emp.companyname=ivw.companyname and 
emp.division=ivw.division;

#Question3
-- Question3 by using NOT IN keyword
select * from STATE where statecode not in (select statecode from EMPLOYER);

-- Question3 by using NOT EXISTS keyword
select statecode, description from STATE st where not exists(select statecode from EMPLOYER emp where st.statecode=emp.statecode);


#Question4
-- Question4 PROJECTION
select location,qtrcode from quarter;

#Question5
select * from quarter where qtrcode in("19951","19961");


#Question6
-- Question6 by using inner join and USING keyword
select emp.companyname, emp.statecode , st.description from EMPLOYER emp inner join STATE st
using(statecode);

-- Question6 by using WHERE clause
select emp.companyname, emp.statecode , st.description from EMPLOYER emp, STATE st
where emp.statecode=st.statecode;

#Question7
-- Question7 LEFT JOIN
select st.description, emp.companyname from STATE st left join EMPLOYER emp using(statecode);
