This file contains all the meta information regarding the columns described in the CSV files. We have provided 3 CSV files:
1. dim_respondents
2. dim_cities
3. fact_survey_responses

-------------------------------------------------------
Column Description for dim_respondents:
-------------------------------------------------------

Respondent_ID: This column represents the unique identifier assigned to each respondent in the survey.

Name: This column represents the name of the respondent who participated in the survey.

Age_Group: This column represents the categorized age group of the respondent. Age groups (15-18, 19-30, 31-45,46-65,65+)

Gender: This column represents the gender of the respondent. (Male, Female, Non-binary)

City_ID: This column represents the ID of the city where the respondent is located.

----------------------------------------------
Column Description for dim_cities:
----------------------------------------------
City_ID: This column represents the ID of the city.

City: This column represents name of the city where the respondent is located. ("Delhi","Mumbai", "Bangalore","Chennai", "Kolkata","Hyderabad", "Ahmedabad","Pune","Jaipur", "Lucknow")

Tier: This column represents the tier category of the city 

--------------------------------------------------------------
Column Description for fact_survey_responses:
--------------------------------------------------------------

Response_ID: This column represents the unique identifier assigned to each response in the survey.

Respondent_ID: This column represents the unique identifier assigned to each respondent who provided the survey response.

Consume_frequency: This column represents the response received for the below question.

	How often do you consume energy drinks?
		Daily
		2-3 times a week
		Once a week
		2-3 times a month
		Rarely

Consume_time: This column represents the response received for the below question.

	When do you typically consume energy drinks?
		Before exercise
		To stay awake during work/study
		For mental alertness
		Throughout the day

Consume_reason: This column represents the response received for the below question.

	What are the main reasons for consuming energy drinks?
		Increased energy and focus
		To combat fatigue
		To boost performance
		To enhance sports performance
		Other


Heard_before: This column represents the response received for the below question.

	Have you heard of our energy drink before today?
		Yes
		No

Brand_perception: This column represents the response received for the below question.

	What do you think of the brand name/logo/design?
		Positive
		Neutral
		Negative

General_perception: This column represents the response received for the below question.

	What is your perception of energy drinks in general?
		Healthy
		Effective
		Dangerous
		Not sure

Tried_before: This column represents the response received for the below question.

	Have you ever tried our energy drink before?
		Yes
		No

Taste_experience: This column represents the response received for the below question.

	If yes, how would you rate the taste, flavor, and overall experience?
		1 (Poor)
		2 (Below average)
		3 (Average)
		4 (Good)
		5 (Excellent)

Reasons_preventing_trying: This column represents the response received for the below question.

	If no, what are the main reasons preventing you from trying it?
		Not available locally
		Not interested in energy drinks
		Unfamiliar with the brand
		Health concerns
		Other

Current_brands: This column represents the response received for the below question.

	Which energy drink brands do you currently consume or prefer?
		CodeX
		Cola-Coka
		Bepsi
		Gangster
		Blue Bull
		Sky 9
		Others

Reasons_for_choosing_brands: This column represents the response received for the below question.

	What are the reasons for choosing those brands over others?
		Brand reputation
		Taste/flavor preference
		Effectiveness
		Availability
		Other

Improvements_desired: This column represents the response received for the below question.

	What improvements would you like to see in energy drinks currently available in the market?
		Reduced sugar content
		More natural ingredients
		Wider range of flavors
		Healthier alternatives
		Other


Ingredients_expected: This column represents the response received for the below question.

	What ingredients do you expect in an energy drink?
		Caffeine 
		Vitamins 
		Sugar
		Guarana

Health_concerns:  This column represents the response received for the below question.
	
	Are you concerned about the health impacts of energy drinks?
		Yes
		No

Interest_in_natural_or_organic:

	Would you be interested in an energy drink with natural or organic ingredients?	
		Yes
		No
		Not Sure


Marketing_channels: This column represents the response received for the below question.

	Which marketing channels or platforms do you often come across energy drink advertisements?
		TV commercials
		Online ads
		Print media
		Outdoor billboards
		Other

Packaging_preference: This column represents the response received for the below question.

	What type of packaging or bottle design would attract you to purchase an energy drink?
		Compact and portable cans
		Innovative bottle design
		Eco-friendly design
		Collectible packaging
		Other

Limited_edition_packaging: This column represents the response received for the below question.

	Would you be more likely to buy an energy drink with limited edition packaging?
		Yes
		No
		Not sure

Price_range: This column represents the response received for the below question.

	What price range do you consider reasonable for an energy drink?
		Below 50
		50-99
		100-150
		Above 150

Purchase_location: This column represents the response received for the below question.

	Where do you typically purchase energy drinks?
		Local stores
		Supermarkets
		Online retailers
		Gyms and fitness centers
		Other

Typical_consumption_situations:  This column represents the response received for the below question.

	In which situations or activities do you typically consume energy drinks?
		Sports/exercise
		Studying/working late
		Social outings/parties
		Driving/commuting
		Other 
