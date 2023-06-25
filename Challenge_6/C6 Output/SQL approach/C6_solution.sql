create schema if not exists codebasics_challenge_6;

use codebasics_challenge_6;

# To check how many records are available in the dataset
select count(*) from dim_cities;   # 10 rows
select count(*) from dim_repondents;   #10000 rows
select count(*) from fact_survey_responses;   #10000 rows 

# 1. Demographic Insights

# a)  Who prefers energy drink more? (male/female/non-binary?)
with cte as (
select a.Respondent_ID, a.Gender, b.Consume_frequency
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Consume_frequency, Gender, count(*) as cnt
from cte 
where Consume_frequency = 'Daily'
group by 1, 2
order by 3 desc;

# Answer is: Male 

# b) Which age group prefers energy drinks more?
with cte as (
select a.Respondent_ID, a.Age, b.Consume_frequency
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Consume_frequency, Age, count(*) as cnt
from cte 
where Consume_frequency = 'Daily'
group by 1, 2
order by 3 desc;

# Answer is: 19-30 

# c) Which type of marketing reaches the most Youth (15-30)?
with cte as (
select a.Respondent_ID, a.Age, b.Marketing_channels
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Marketing_channels, Age, count(*) as cnt
from cte 
where Age in('15-18','19-30') 
group by 1, 2
order by 3 desc;

# Answer is: Online ads

# 2. Consumer Preferences

# a) What are the preferred ingredients of energy drinks among respondents?
with cte as (
select a.Respondent_ID, b.Ingredients_expected
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Ingredients_expected, count(*) as cnt
from cte 
group by 1
order by 2 desc;

# Answer is: Caffeine

# b) What packaging preferences do respondents have for energy drinks?
with cte as (
select a.Respondent_ID, b.Packaging_preference
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Packaging_preference, count(*) as cnt
from cte 
group by 1
order by 2 desc;

# Answer is: Compact and portable cans

# 3. Competition Analysis

# a) Who are the current market leaders?
with cte as (
select a.Respondent_ID, b.Current_brands
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Current_brands, count(*) as cnt
from cte 
group by 1
order by 2 desc;

# Answer is: Cola-Coka

# b) What are the primary reasons consumers prefer those brands over ours?
with cte as (
select a.Respondent_ID, b.Reasons_for_choosing_brands
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Reasons_for_choosing_brands, count(*) as cnt
from cte 
group by 1
order by 2 desc;

# Answer is: Brand reputation 

# 4. Marketing Channels and Brand Awareness

# a) Which marketing channel can be used to reach more customers?
with cte as (
select a.Respondent_ID, b.Marketing_channels
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Marketing_channels, count(*) as cnt
from cte 
group by 1
order by 2 desc;

# Answer is: Online ads 

# b) How effective are different marketing strategies and channels in reaching our customers?
# Online ads and TV commercials are most effective marketing strategies and channels in reaching our customers.

# 5. Brand Penetration

# a) What do people think about our brand? (overall rating)
with cte as (
select a.Respondent_ID, b.Taste_experience
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Taste_experience, count(*) as cnt
from cte 
group by 1
order by 2 desc;

# Answer is: Most people have rated our brand as 3 (Average)

# b) Which cities do we need to focus more on?
with cte as (
select a.Respondent_ID, b.Heard_before, c.City
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID
join dim_cities as c
on a.City_ID = c.City_ID)

select City, count(Heard_before) as cnt
from cte 
where Heard_before='No'
group by 1
order by 2 desc;

# Answer is: Bangalore, Hyderabad and Mumbai 

# 6. Purchase Behavior

# a) Where do respondents prefer to purchase energy drinks?
with cte as (
select a.Respondent_ID, b.Purchase_location
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Purchase_location, count(*) as cnt
from cte 
group by 1
order by 2 desc;

# Answer is: Supermarkets

# b) What are the typical consumption situations for energy drinks among respondents?
with cte as (
select a.Respondent_ID, b.Typical_consumption_situations
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Typical_consumption_situations, count(*) as cnt
from cte 
group by 1
order by 2 desc;

# Answer is: Sports/exercise 

# c) What factors influence respondents' purchase decisions, such as price range and limited edition packaging?
with cte as (
select a.Respondent_ID, b.Limited_edition_packaging
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Limited_edition_packaging, count(*) as cnt
from cte 
group by 1
order by 2 desc;

# Answer is: We cannot make inference whether limited edition packaging is an influence or not, because the count of respondents who would prefer limited edition versus those who don't, is very small. We will require more data points to conclude it.

with cte as (
select a.Respondent_ID, b.Price_range
from dim_repondents as a
join fact_survey_responses as b
on a.Respondent_ID=b.Respondent_ID)

select Price_range, count(*) as cnt
from cte 
group by 1
order by 2 desc;

# Answer is: Price between 50-99 is highly preferred by most of the respondents. Thus price range has high influence on respondents purchase decisions.

# 7. Product Development

# a) Which area of business should we focus more on our product development? (Branding/taste/availability)
/* Brand reputation: Based on survey, when we did competition analysis (3(b)) , we got to know that most of the people prefer other 
brands (Cola-Coka) over ours because of brand reputation.
Taste: Our brand has average rating by respondents but if we focus on improving the taste, we can make it better and that would 
attract more customers buying our brand.
Availability: There are some cities where we have high count of respondents who haven't heard of our brand. We can focus on 
upscaling our brands business there.  */ 