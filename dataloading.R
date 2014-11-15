nursing <- read.csv("~/Github/bayes-nursing/California_Nursing_Home_-_ALL_Data.csv")
setwd("/Users/Vivek/Github/bayes-nursing")

View(nursing)
nrow(nursing)
justzip <- numeric()
for( i in 1:584) {
justzip[i] <- substr(nursing$f_zip[i],1, 5)
}
nursing$justzip <- justzip

write.csv(nursing, "nursing_zip_fixed.csv")

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


###################
#QUALITY SECTION
nursing$zip_CMS_overall_rating
#scale of 1-5 stars

#Staffing  zip_total_staff	Number	8	Quality of Facility-Complaints	CASPER	Average number of staffing complaints in all five years	Staffing levels and care.
#Resident Rights	zip_total_rights	Number	8	Quality of Facility-Complaints	CASPER	Average number of resident rights complaints in all five years	Resident rights not respected or upheld.
#Nutrition	zip_total_nutri	Number	8	Quality of Facility-Complaints	CASPER	Average number of nutrition complaints in all five years	Food or meeting special dietary requirements.
#Environment	zip_total_environ	Number	8	Quality of Facility-Complaints	CASPER	Average number of environment complaints in all five years	Physical environment.
#Quality of Care	zip_total_care	Number	8	Quality of Facility-Complaints	CASPER	Average number of quality of care complaints in all five years	Resident care and services.
#Administration	zip_total_admin	Number	8	Quality of Facility-Complaints	CASPER	Average number of administration complaints in all five years	Management and medical records.
#Mistreatment	zip_total_abuse	Number	8	Quality of Facility-Complaints	CASPER	Average number of mistreatment complaints in all five years	Misuse of resident, including neglect or abuse.

#Dont use this one
####Total  zip_total_total	Number	8	Quality of Facility-Complaints	CASPER	Average total of all complaints over all five years	A complaint is a formal grievance against a facility that is filed with and investigated by the state Licensing and Certification (L&C) Program, which is responsible for monitoring nursing facility quality.  It is filed when someone has an objection to treatment or safety.  Complaints may be considered an indication of quality because, to some extent, they show the degree of consumer satisfaction or dissatisfaction with a nursing facility. Complaints may also be filed with a local ombudsman.  If the ombudsman investigates and finds a serious problem, she or he will inform L&C and ask them to investigate.  Only the L&C agency may issue deficiencies or citations for violations of the federal and state requirements.  After complaints are investigated by L&C, they are deemed either substantiated (if the inspector found the claim to be true), or unsubstantiated (if there was no proof to support the complaint). If a complaint is substantiated, a deficiency or citation may be given to the facility. 

#UHH
#For Profit Facilities  zip_for_profit	Number	8	Overview	ELMS	Number of Facilities that are For Profit Organizations	"Nursing home owners can be for-profit organizations, non-profit organizations, or government agencies.  Owners make decisions that affect quality of care.  They decide the number and type of staff hired.  They decide how all resources are spent. There are differences in financial motivations and obligations at for profit and non-profit facilities. Frequent changes in ownership, or a recent change in ownership, may affect quality of care.  For-Profit Organizations.  For-profit organizations may be owned by individuals or two or more people.  Some sell stocks and have stockholders.  The profits from the operation are generally passed back to the owners directly or the stockholders in the form of dividends on their shares of the stock. 
##NEGATIVES
#zip_state_penalty_amount
#Total State Fines  zip_state_penalty_amount	Number	8	Quality of Facility-State Enforcement	ELMS	Average State Penalty Fine Amount	State citations are categorized into classes, based on how seriously harmed residents either were or could be if the problem is not fixed.  



#DATA TO USE
#Total State Fines  zip_state_penalty_amount	Number	8	Quality of Facility-State Enforcement	ELMS	Average State Penalty Fine Amount	State citations are categorized into classes, based on how seriously harmed residents either were or could be if the problem is not fixed.  
####Total  zip_total_total  Number	8	Quality of Facility-Complaints	CASPER	Average total of all complaints over all five years	A complaint is a formal grievance against a facility that is filed with and investigated by the state Licensing and Certification (L&C) Program, which is responsible for monitoring nursing facility quality.  It is filed when someone has an objection to treatment or safety.  Complaints may be considered an indication of quality because, to some extent, they show the degree of consumer satisfaction or dissatisfaction with a nursing facility. Complaints may also be filed with a local ombudsman.  If the ombudsman investigates and finds a serious problem, she or he will inform L&C and ask them to investigate.  Only the L&C agency may issue deficiencies or citations for violations of the federal and state requirements.  After complaints are investigated by L&C, they are deemed either substantiated (if the inspector found the claim to be true), or unsubstantiated (if there was no proof to support the complaint). If a complaint is substantiated, a deficiency or citation may be given to the facility. 

zip_total_staff
zip_total_rights
zip_total_nutri	Number
zip_total_environ	Number
zip_total_care
zip_total_admin	Number
zip_total_abuse	Number



fit <- lm(zip_CMS_overall_rating ~ zip_state_penalty_amount + zip_total_total + 
zip_total_staff + zip_total_rights
          + zip_total_nutri  
        + zip_total_environ	
          + zip_total_care
          + zip_total_admin	
          + zip_total_abuse, data=nursing)

summary(fit)


fit <- lm(zip_CMS_overall_rating ~ zip_state_penalty_amount
#          + zip_total_total
          + zip_total_staff 
          + zip_total_rights
          + zip_total_nutri  
          + zip_total_environ  
          + zip_total_care
          + zip_total_admin	
          + zip_total_abuse, data=nursing)

summary(fit)

str(nursing$zip_state_penalty_amount)

cor(nursing$zip_state_penalty_amount, nursing$zip_CMS_overall_rating, use = "complete.obs")
install.packages("corrgram")
library(corrplot)
corrplot(nursing)

corr.test()
cor(nursing)
corrplot(nursing)
#library(corrgram)
#corrgram(nursing)

cor(nursing$zip_CMS_overall_rating[!is.na(nursing$zip_CMS_overall_rating) & !is.na(nursing$zip_nhoverall_rating)], 
    nursing$zip_nhoverall_rating[!is.na(nursing$zip_CMS_overall_rating) & !is.na(nursing$zip_nhoverall_rating)])
plot(nursing$zip_CMS_overall_rating[!is.na(nursing$zip_CMS_overall_rating) & !is.na(nursing$zip_nhoverall_rating)], 
     nursing$zip_nhoverall_rating[!is.na(nursing$zip_CMS_overall_rating) & !is.na(nursing$zip_nhoverall_rating)])


######################
#Occupancy of current hospitals!!

#Occupancy Rate  zip_occup_rate	Number	8	Facility Characteristics	OSHPD FINANCIAL	Average occupancy rate	The percent of beds in use by residents on the day the facility completed its most recent cost report for the Office of Statewide Health Planning and Development (OSHPD).  It is the number of residents living in the facility on that day divided by the number of beds.  
#Number of Beds	zip_numbeds	Number	8	Facility Characteristics	OSHPD FINANCIAL	Average number of beds per facility	The size of a nursing facility may affect the living environment and the quality of care.  Small facilities may have a more “homelike” atmosphere than large facilities, and more personalized services and staff   Large facilities may offer more training to staff and have more highly skilled nurses. 
sum(is.na(nursing$zip_occup_rate))
#occupancy rate ->
nursing$zip_occup_rate

nursing$zip_numbeds
#Non-profit Facilities  zip_non_profit	Number	8	Overview	ELMS	Number of Non-profit Facilities	Nursing home owners can be for-profit organizations, non-profit organizations, or government agencies.  Owners make decisions that affect quality of care.  They decide the number and type of staff hired.  They decide how all resources are spent. There are differences in financial motivations and obligations at for profit and non-profit facilities. Frequent changes in ownership, or a recent change in ownership, may affect quality of care.  Non-Profit Organizations.  Non-profit nursing homes are usually operated by charitable or religious organizations.  They have an administrative board and corporate officers but they do not have stockholders.  A non-profit organization may make a profit on their operation but profits must be reinvested in the facility or in other corporate activities.  The owners of the non-profit must not receive any portion of profits for their own personal gain.  
#Government Owned Facilities	zip_govt_owned	Number	8	Overview	ELMS	Number of Government Owned Facilities	Nursing home owners can be for-profit organizations, non-profit organizations, or government agencies.  Owners make decisions that affect quality of care.  They decide the number and type of staff hired.  They decide how all resources are spent. There are differences in financial motivations and obligations at for profit and non-profit facilities. Frequent changes in ownership, or a recent change in ownership, may affect quality of care.   Government Agencies.  Cities, counties, districts, or states own government-run nursing homes.  This type of facility is not a private corporation, so it does not have private owners or officers.
#For Profit Facilities	zip_for_profit	Number	8	Overview	ELMS	Number of Facilities that are For Profit Organizations	"Nursing home owners can be for-profit organizations, non-profit organizations, or government agencies.  Owners make decisions that affect quality of care.  They decide the number and type of staff hired.  They decide how all resources are spent. There are differences in financial motivations and obligations at for profit and non-profit facilities. Frequent changes in ownership, or a recent change in ownership, may affect quality of care.  For-Profit Organizations.  For-profit organizations may be owned by individuals or two or more people.  Some sell stocks and have stockholders.  The profits from the operation are generally passed back to the owners directly or the stockholders in the form of dividends on their shares of the stock. 

nursing$zip_non_profit

nursing$num_empty_beds = nursing$num_facilities * nursing$zip_numbeds * (1-nursing$zip_occup_rate/100)
nursing$total_beds = nursing$num_facilities * nursing$zip_numbeds

hist(nursing$num_empty_beds)
str(nursing$num_empty_beds)
nursing$num_empty_beds
