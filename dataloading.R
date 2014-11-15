nursing <- read.csv("~/Github/bayes-nursing/California_Nursing_Home_-_ALL_Data.csv")
View(nursing)
nrow(nursing)
justzip <- numeric()
for( i in 1:584) {
justzip[i] <- substr(nursing$f_zip[i],1, 5)
}
nursing$justzip <- justzip

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

nursing$zippop
#Population Within Zipcode  zippop	Number	8	Census	http://statewidedatabase.org/info/statetext/zipcode_reports.html	Registerd voter population within the zipcode	These conversions are derived from the 2012 Primary Election registered voter file for California. 
#Average Total Expenditures per Resident Day  zip_extotal	Number	8	Cost and Finances-Expenditures per Resident Day	OSHPD FINANCIAL	Average total expenses	Facilities are required to report all expenses to the state each year. Facility owners and managers decide how much money to spend on different services and activities.  Some of the expenses are fixed, such as: leases, rent, interest, and equipment.  Other expenditures, such as wages and benefits, are determined solely by management.  

#Scoring
#U.S. Government Rating  zip_CMS_overall_rating	Number	8	Overview-CMS Rating	CMS NH COMPARE	U.S. Government Rating from NH Compare Website.  This is the average rating for all of the nursing homes in the zip code.	The U.S. Centers for Medicare & Medicaid Services (CMS) created a five-star quality rating system to help consumers, their families, and caregivers compare nursing homes and help identify areas where questions could be asked.  Nursing homes with five stars are considered to have above average quality and nursing homes with one star are below average quality.

hist(nursing$zippop)
head(nursing)

length(unique(nursing$f_zip))

