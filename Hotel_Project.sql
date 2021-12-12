

--Hotel reservation and revenue 
--Requirements
--Build a visual data story or dashboard using power bi to present shakeholders
-- is our hotel revenue growing by year?
-- we have two type of hotel so it would be good to segment evenue by hotel type.

-- should we increase our parking lot size?
-- we want to uderstand that is there any trend gust with personal cars.

--What trend can we see in the data?
-- Focus on average daily rate and gusts to explore seasonality.

  select * from year2018
  Union

  select * from year2019
  union

  select * from year2020

 -- is our hotel revenue growing by year?
-- we have two type of hotel so it would be good to segment evenue by hotel type.


with Hotels as
(
    select * from year2018
  Union

  select * from year2019
  union

  select * from year2020
  )


  select arrival_date_year,hotel, round(sum((stays_in_weekend_nights+stays_in_week_nights)*adr),2) as revenue from hotels
  group by arrival_date_year,hotel
  order by revenue desc


  -- should we increase our parking lot size?
-- we want to uderstand that is there any trend gust with personal cars.

  
with Hotels as
(
    select * from year2018
  Union

  select * from year2019
  union

  select * from year2020
  )


select * from Hotels h
 left join market_segment$ ms
on h.market_segment=ms.market_segment
left join meal_cost$ mc
on h.meal=mc.meal
--where Cost=0

  select * from market_segment$
  select * from meal_cost$

  select * from market_segment$