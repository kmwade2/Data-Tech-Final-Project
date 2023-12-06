select b.city, date_format(r.date, '%m-%Y') as mon, avg(b.stars) as avg_star, avg(b.review_count)as avg_review_count, count(distinct business_id) as restaurant_number
from business as b
inner join category as c
using(business_id)
inner join review as r
using(business_id)
where category_name = 'Restaurants'
and b.city in ('New Orleans','Tucson','Saint Louis','Tampa','Indianapolis', 'Nashville', 'Philadelphia','Reno')
and Year(r.date) in ('2019', '2020', '2021', '2022')
group by city, mon
order by city, mon;