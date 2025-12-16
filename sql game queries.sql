select * from crime_scene_report;

--murder case only--
select * from crime_scene_report where 
type="murder" and city="SQL City" 
and date="20180215";

select * from person;
--tables --
SELECT name
FROM sqlite_master
WHERE type = 'table';

SELECT *
FROM person
WHERE address_street_name LIKE '%gym%';
--game starts here-
select * FROM
crime_scene_report where city like  "SQL%";

--1

select type,description from 
crime_scene_report where type="murder" and  date="20180115" and city="SQL City";
-- ans
'''
Security footage shows that there were 2 witnesses.
The first witness lives at the last house on "Northwestern Dr".
The second witness, named Annabel, lives somewhere on "Franklin Ave".
'''

select * from person where name like "%annabel%" 
and address_street_name="Franklin Ave";

select * from person where address_street_name="Northwestern Dr" 
order by address_number desc ;
--two witness name and thier id 
--these are should be interviewd 
select id,name from  person where name = "Morty Schapiro"  or name ="Annabel Miller";

