# Write your MySQL query statement below
select si.user_id, round(avg(if(co.action='confirmed',1,0)),2 ) as confirmation_rate
from Signups si
left join Confirmations co
on si.user_id=co.user_id
group by user_id;