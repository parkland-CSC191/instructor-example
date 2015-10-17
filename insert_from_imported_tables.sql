insert into `schools` (
    select school_id,
case school_short_name
 when 'BO' then 'Bottenfield'
 when 'CB' then 'Carrie Busey'
 when 'ST' then 'Stratton'
 when 'DH' then 'Dr. Howard'
 when 'GH' then 'Garden Hills'
 when 'KW' then 'Kenwood'
 when 'RO' then 'Robeson'
 when 'SS' then 'Southside'
 when 'WA' then 'Washington'
 when 'WV' then 'Westview'
 when 'BA' then 'Barkstall'
else '' end school_name,
school_short_name 
from (
SELECT `UNIT 4` school_id, `TEST 2` school_short_name, sum(D) capacity
FROM `SC`
WHERE `UNIT 4` is not null and `UNIT 4` != 'CODE' and `UNIT 4` != 'TOTALS:'
group by `UNIT 4`, `TEST 2`) a )
;

-- add an entry for an 'unassigned' school (some data elements use 0 to indicate the unassigned status
insert into  `schools` values (0,'No school','N/A');

insert into `school_capacity` (
    select school_id,
'2012',
    capacity
from (
SELECT `UNIT 4` school_id, `TEST 2` school_short_name, sum(D) capacity
FROM `SC`
WHERE `UNIT 4` is not null and `UNIT 4` != 'CODE' and `UNIT 4` != 'TOTALS:'
group by `UNIT 4`, `TEST 2`) a )
;

-- insert the preassignments
insert into choices (
select '2012' year,
 null choice1,
 null choice2,
 null choice3,
 null choice4,
 null choice5,
 null choice6,
 null choice7,
 null choice8,
 null choice9,
 null choice10,
 null choice11,
 null choice12,
 preasg assigned_school
from `apps2012_run3`
where preasg != 0)
;

-- insert the "real" choices
insert into choices (
select '2012' year,
 ch1sch choice1,
 ch2sch choice2,
 ch3sch choice3,
 ch4sch choice4,
 ch5sch choice5,
 null choice6,
 null choice7,
 null choice8,
 null choice9,
 null choice10,
 null choice11,
 null choice12,
 asgsch assigned_school
from `apps2012_run3`
where preasg = 0
);
