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

select * from interview where person_id in (select id from  person where name = "Morty Schapiro"  or name ="Annabel Miller");

--in the interview we got another two witnesses

--check the gym details 

--gold 
select * from get_fit_now_check_in where membership_id like "48Z%";
select * from get_fit_now_member where  membership_status="gold" and id in (select membership_id from get_fit_now_check_in where membership_id like "48Z%");
select * from drivers_license where plate_number like "%H42W%";

--2 nd guy on gym jan 9th

select * from get_fit_now_member where membership_start_date like "%0109";

--suspent in membership id
SELECT *
FROM get_fit_now_check_in
WHERE check_in_date = 20180109
AND membership_id IN ('48Z55', '48Z7A');

select * from person where license_id in (183779,423327,664760)

select * from drivers_license where id in (183779,423327,664760)

select * from person where license_id in (183779,664760,423327)

--from the above car number plate these above 3 are suspects
interview all the suspects 

select *
from interview
where person_id = (
  SELECT id FROM person WHERE name = 'Jeremy Bowers'
);

--I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5"
-- (65") or 5'7" (67"). She has red hair and she drives a Tesla Model S. I know that she attended 
--the SQL Symphony Concert 3 times in December 2017.

select * from drivers_license 
where hair_color='red' 
and gender="female" 
and height between 65 and 67
and car_make="Tesla"

select * from person where license_id in (202298,291182,918773)

--cermony 3 times 

select DISTINCT(event_name) from facebook_event_checkin


select person_id,count(*) as visit from 
facebook_event_checkin where 
event_name='SQL Symphony Concert'
and date between 20171201 and 20171231
group by person_id
having visit=3

select * from income where ssn in (select ssn from person where id in (24556,99716))
--she the killer 
select * from person where ssn =987756388

select  * from solution

insert into solution values("Miranda Priestly","Congrats, you found the brains behind the murder! Everyone in SQL City hails you as the greatest SQL detective of all time. Time to break out the champagne!");
