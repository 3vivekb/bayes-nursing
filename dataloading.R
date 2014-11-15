nursing <- read.csv("~/Github/bayes-nursing/California_Nursing_Home_-_ALL_Data.csv")
#View(California_Nursing_Home_._ALL_Data)

str(Nursing)
nursing$f_zip

nursing$zip_yr65to84
nursing$zip_yr45to64
nursing$zip_over85
nursing$zip_less45
65 - 84 Years  zip_yr65to84	Number	8	Residents-Age	OSHPD UTILIZATION 	Average percent of residents age 65-84	The percent of residents in each age group on the day the facility completed its most recent cost report for the Office of Statewide Health Planning and Development (OSHPD).
45 - 64 Years	zip_yr45to64	Number	8	Residents-Age	OSHPD UTILIZATION 	Average percent of residents age 45-64	The percent of residents in each age group on the day the facility completed its most recent cost report for the Office of Statewide Health Planning and Development (OSHPD).
Over 84 Years	zip_over85	Number	8	Residents-Age	OSHPD UTILIZATION 	Average percent of residents over the age of 85	The percent of residents in each age group on the day the facility completed its most recent cost report for the Office of Statewide Health Planning and Development (OSHPD).
Under 45 Years	zip_less45	Number	8	Residents-Age	OSHPD UTILIZATION 	Average Percent of Residents under the age of 45	The percent of residents in each age group on the day the facility completed its most recent cost report for the Office of Statewide Health Planning and Development (OSHPD).
Male	zip_pctmale	Number	8	Residents-Gender	OSHPD UTILIZATION 	Average percent of residents who are male	The percent of residents of each gender on the day the facility completed it’s most recent cost report for the Office of Statewide Health Planning and Development (OSHPD).