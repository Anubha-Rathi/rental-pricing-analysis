create database airbnb_analysis;
use airbnb_analysis;

create table airbnb_data (
name text,
neighbourhood_group text,
neighbourhood text,
room_type text,
price int,
minimum_nights int,
number_of_reviews int,
reviews_per_month float,
availabilty_365 int,
estimated_occupancy int
);

select * from airbnb_data;

select avg(price) as avg_price
from airbnb_data;

select neighbourhood_group, avg(price) as avg_price
from airbnb_data
group by neighbourhood_group
order by avg_price desc;

select room_type, avg(price) as avg_price
from airbnb_data
group by room_type;

select neighbourhood_group,
avg(estimated_occupancy) as avg_occupancy
from airbnb_data
group by neighbourhood_group
order by avg_occupancy desc;