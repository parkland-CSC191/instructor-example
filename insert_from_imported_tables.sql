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
