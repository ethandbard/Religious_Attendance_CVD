* Written by R;
*  write.foreign(df = data, datafile = "../Data/nhanes0708.csv",  ;

PROC FORMAT;
value gender 
     1 = "Male" 
     2 = "Female" 
;

value ethnicty 
     1 = "Non-Hispanic White" 
     2 = "Hispanic" 
     3 = "Non-Hispanic Black" 
     4 = "Other" 
;

value educatin 
     1 = "High School/GED" 
     2 = "Less than High School" 
     3 = "Some college" 
     4 = "College Graduate or above" 
;

value mrtl_stt 
     1 = "Never Married" 
     2 = "Married" 
     3 = "Previously Married" 
     4 = "Refused" 
     5 = "Don't Know" 
;

value brn_tsd_ 
     1 = "Born in US" 
     2 = "Born outside US" 
;

value pvrty_l_ 
     1 = "Poverty Index <= 1.3" 
     2 = "Poverty Index in (1.30, 1.85)" 
     3 = "Poverty Index > 1.85" 
;

value hlth_nsr 
     1 = "Not Covered" 
     2 = "Covered" 
;

value prvt_nsr 
     1 = "Not Covered" 
     2 = "Covered" 
;

value medicare 
     1 = "Not Covered" 
     2 = "Covered" 
;

value medicaid 
     1 = "Not Covered" 
     2 = "Covered" 
;

value nm_hlth_ 
     1 = "None" 
     2 = "1" 
     3 = "2 to 3" 
     4 = "4 to 9" 
     5 = "10 to 12" 
     6 = "13 or more" 
;

value evr_rc__ 
     1 = "Yes" 
     2 = "No" 
;

value wrrd____ 
     1 = "Often True" 
     2 = "Sometimes true" 
     3 = "Never true" 
;

value fod_rn_t 
     1 = "Often True" 
     2 = "Sometimes true" 
     3 = "Never true" 
;

value mblty_lm 
     1 = "Yes" 
     2 = "No" 
;

value hgh_bld_ 
     1 = "Yes" 
     2 = "No" 
;

value fstng_gl 
     1 = "Not at Risk" 
     2 = "At Risk" 
;

value tbcc__5_ 
     1 = "Yes" 
     2 = "No" 
;

value h_12___1 
     1 = "Yes" 
     2 = "No" 
;

value typ_f_dr 
     1 = "Abstainer" 
     2 = "Harmful" 
     3 = "Moderate" 
;

value rlgs_ttn 
     1 = "Less than Weekly" 
     2 = "Weekly" 
     3 = "More than Weekly" 
;

value hrt_ttck 
     1 = "Yes" 
     2 = "No" 
;

value stroke 
     1 = "Yes" 
     2 = "No" 
;

value risk_sum 
     1 = "0" 
     2 = "1" 
     3 = "2" 
     4 = "3" 
     5 = "4" 
;

DATA  rdata ;
INFILE  "../Data/nhanes0708.csv" 
     DSD 
     LRECL= 164 ;
INPUT
 SEQN
 gender
 age
 ethnicity
 education
 marital_status
 born_outside_us
 poverty_level_index
 poverty_level_category
 health_insurance
 private_insurance
 medicare
 medicaid
 num_healthcare_visits
 ever_received_food_stamps
 FSQ171
 num_months_WIC
 worried_house_run_out_food
 food_ran_out
 mobility_limit
 risk_mobility
 high_blood_pressure
 risk_bp
 fasting_glucose
 risk_glucose
 tobacco_use_5_days
 had_12_drinks_in_1yr
 avg_drinks_daily_past_yr
 num_drinks_past_yr
 num_drinks_past_yr_unit
 num_days_5_drinks_or_more
 ALQ140U
 had_12_drinks_lifetime
 num_drinks_weekly
 type_of_drinker
 risk_alcohol
 religious_attendance
 heart_attack
 stroke
 risk_tobacaco
 religious_attendance_num
 weight
 height
 waist
 rfm
 risk_rfm
 risk_sum
;
FORMAT gender gender. ;
FORMAT ethnicity ethnicty. ;
FORMAT education educatin. ;
FORMAT marital_status mrtl_stt. ;
FORMAT born_outside_us brn_tsd_. ;
FORMAT poverty_level_category pvrty_l_. ;
FORMAT health_insurance hlth_nsr. ;
FORMAT private_insurance prvt_nsr. ;
FORMAT medicare medicare. ;
FORMAT medicaid medicaid. ;
FORMAT num_healthcare_visits nm_hlth_. ;
FORMAT ever_received_food_stamps evr_rc__. ;
FORMAT worried_house_run_out_food wrrd____. ;
FORMAT food_ran_out fod_rn_t. ;
FORMAT mobility_limit mblty_lm. ;
FORMAT high_blood_pressure hgh_bld_. ;
FORMAT fasting_glucose fstng_gl. ;
FORMAT tobacco_use_5_days tbcc__5_. ;
FORMAT had_12_drinks_in_1yr h_12___1. ;
FORMAT type_of_drinker typ_f_dr. ;
FORMAT religious_attendance rlgs_ttn. ;
FORMAT heart_attack hrt_ttck. ;
FORMAT stroke stroke. ;
FORMAT risk_sum risk_sum. ;
RUN;
