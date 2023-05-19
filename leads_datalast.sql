select * 
from sampledata limit 3;

use leads_data;

describe sampledata;



select distinct company from sampledata;

select count(company) from sampledata
where company <> '';

select count(`Lead Source`) from sampledata
where `Lead Source` = '';

select `What matters most to you in choosing a course` , count(`What matters most to you in choosing a course`)
from sampledata
group by `What matters most to you in choosing a course`;

create table leads_datas
select `Prospect ID`,`Lead Number`,`Lead Origin`,`Lead Source`,`Do Not Email`,`Do Not Call`,`TotalVisits`,`Total Time Spent on Website`,`Page Views Per Visit`,`Country`,`Specialization`,`Last Activity`
`How did you hear about X Education`,`What is your current occupation`,`What matters most to you in choosing a course`,`Search`,`Magazine`,
`Newspaper Article`,`X Education Forums`,`Newspaper`,`Digital Advertisement`,`Through Recommendations`,`Lead Quality`,
`Update me on Supply Chain Content`,`Get updates on DM Content`,`Lead Profile`,`City`,`Asymmetrique Activity Index`,`Asymmetrique Profile Index`,
`Asymmetrique Activity Score`,`Asymmetrique Profile Score`,`I agree to pay the amount through cheque`,`A free copy of Mastering The Interview`,
`Last Notable Activity`,`Converted`
from sampledata;

select `Lead Source` from leads_datas;
drop table lead_data;

#version control
create table lead_datav2 as select * from leads_datas;

select * from lead_datav2;

set sql_safe_updates=0;
update lead_datav2 set `Lead Source`= 'other'
where lead_datav2.`Lead Source` = '';
select distinct `Lead Source` from lead_datav2;

update lead_datav2 set `What matters most to you in choosing a course` = 'other'
where lead_datav2.`What matters most to you in choosing a course` = '';

select distinct `What matters most to you in choosing a course` from lead_datav2;

describe lead_datav2;

select count(`What matters most to you in choosing a course`) from lead_datav2
where `What matters most to you in choosing a course`='';

describe lead_datav2;

select distinct `Country`, count(`Country`)
from lead_datav2
group by `Country`;
update lead_datav2 set `Country`='unknown'
where lead_datav2.`Country`='';

select distinct `Specialization`, count(`Specialization`)
from lead_datav2
group by `Specialization`;
update lead_datav2 set `Specialization`='other'
where lead_datav2.`Specialization`='';
update lead_datav2 set `Specialization`='not mention'
where lead_datav2.`Specialization` = `select` ;


select distinct `How did you hear about X Education`, count(`How did you hear about X Education`)
from lead_datav2
group by `How did you hear about X Education`;
update lead_datav2 set `How did you hear about X Education`='unknown'
where lead_datav2.`How did you hear about X Education`='';

select distinct `What is your current occupation`, count(`What is your current occupation`)
from lead_datav2
group by `What is your current occupation`;

update lead_datav2 set `What is your current occupation`='not mentioned'
where lead_datav2.`What is your current occupation`='';

select distinct `What matters most to you in choosing a course`, count(`What matters most to you in choosing a course`)
from lead_datav2
group by `What matters most to you in choosing a course`;

select distinct `Lead Quality`, count(`Lead Quality`)
from lead_datav2
group by `Lead Quality`;
update lead_datav2 set `Lead Quality`='not mentioned'
where lead_datav2.`Lead Quality`='';

select distinct `Lead Profile`, count(`Lead Profile`)
from lead_datav2
group by `Lead Profile`;

update lead_datav2 set `Lead Profile`='not mentioned'
where lead_datav2.`Lead Profile`='';

select distinct `City`, count(`City`)
from lead_datav2
group by `City`;
update lead_datav2 set `City`='not mentioned'
where lead_datav2.`City`='';

select distinct `Asymmetrique Activity Index`, count(`Asymmetrique Activity Index`)
from lead_datav2
group by `Asymmetrique Activity Index`;
update lead_datav2 set `Asymmetrique Activity Index`='not interested'
where lead_datav2.`Asymmetrique Activity Index`='not mentioned';

select distinct `Asymmetrique Profile Index`, count(`Asymmetrique Profile Index`)
from lead_datav2
group by `Asymmetrique Profile Index`;
update lead_datav2 set `Asymmetrique Profile Index`='not interested'
where lead_datav2.`Asymmetrique Profile Index`='';

select distinct `Asymmetrique Activity Score`, count(`Asymmetrique Activity Score`)
from lead_datav2
group by `Asymmetrique Activity Score`;


select distinct `Asymmetrique Profile Score`, count(`Asymmetrique Profile Score`)
from lead_datav2
group by `Asymmetrique Profile Score`;

select distinct `I agree to pay the amount through cheque`, count(`I agree to pay the amount through cheque`)
from lead_datav2
group by `I agree to pay the amount through cheque`;

select distinct `A free copy of Mastering The Interview`, count(`A free copy of Mastering The Interview`)
from lead_datav2
group by `A free copy of Mastering The Interview`;

select distinct `Converted`, count(`Converted`)
from lead_datav2
group by `Converted`;

select distinct `Lead Source`, count(`Lead Source`)
from lead_datav2
group by `Lead Source` order by count(`Lead Source`) desc;


