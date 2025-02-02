/*==============================================================================
DO FILE NAME:			baseline tables
PROJECT:				Immunosuppressant meds research
DATE: 					22 Mar 21
AUTHOR:					M Yates / J Galloway
						adapted from C Rentsch										
DESCRIPTION OF FILE:	baseline tables
DATASETS USED:			imid main data file
DATASETS CREATED: 		tables
OTHER OUTPUT: 			logfiles, printed to folder $Logdir
USER-INSTALLED ADO: 	 
  (place .ado file(s) in analysis folder)						
==============================================================================*/

import delimited `c(pwd)'/output/input.csv, clear

* set filepaths

global projectdir `c(pwd)'
di "$projectdir"

global logdir "$projectdir/logs"
di "$logdir"

* Open a log file
cap log close
log using "$logdir/descriptive_tables", replace

* Set Ado file path
adopath + "$projectdir/analysis/extra_ados"

/* SET Index date ===========================================================*/
global indexdate 			= "01/03/2020"

use $projectdir/output/data/file_imid, clear

/*Tables=====================================================================================*/
*Table 1a - 
table1_mc, by(imid) total(before) onecol iqrmiddle(",") saving("$projectdir/output/data/tables.csv", cell(A1) sheetmodify keepcellfmt) ///
	vars(agegroup cat %5.1f \ ///
		 male bin %5.1f \ ///
		 bmicat cat %5.1f \ ///
		 obese4cat cat %5.1f \ ///
		 ethnicity cat %5.1f \ ///
		 imd cat %5.1f \ ///
		 smoke cat %5.1f \ ///
		 chronic_cardiac_disease bin %5.1f \ /// 
		 stroke bin %5.1f \ ///
		 combined_cv_comorbid bin %5.1f \ ///
		 hypertension bin %5.1f \ ///
		 diabcat cat %5.1f \ ///
		 ckd_egfr cat %5.1f \ ///
		 esrf bin %5.1f \ ///
		 gp_consult_count contn %5.1f \ ///
		 steroidcat bin %5.1f \ ///
		 oral_prednisolone_3m_0m contn %5.1f )


*Table 1b - by imid type 
table1_mc, by(joint) total(before) onecol iqrmiddle(",") saving("$projectdir/output/data/tables.csv", cell(A60) sheetmodify keepcellfmt) ///
	vars(agegroup cat %5.1f \ ///
		 male bin %5.1f \ ///
		 bmicat cat %5.1f \ ///
		 obese4cat cat %5.1f \ ///
		 ethnicity cat %5.1f \ ///
		 imd cat %5.1f \ ///
		 smoke cat %5.1f \ ///
		 chronic_cardiac_disease bin %5.1f \ /// 
		 stroke bin %5.1f \ ///
		 combined_cv_comorbid bin %5.1f \ ///
		 hypertension bin %5.1f \ ///
		 diabcat cat %5.1f \ ///
		 ckd_egfr cat %5.1f \ ///
		 esrf bin %5.1f \ ///
		 gp_consult_count contn %5.1f \ ///
		 steroidcat bin %5.1f \ ///
		 oral_prednisolone_3m_0m contn %5.1f \ ///
		 standtnf bin %5.1f \ ///
		 standil6 bin %5.1f \ ///
		 standritux bin %5.1f \ ///
		 standil17 bin %5.1f \ ///
		 standjaki bin %5.1f )
		 
table1_mc, by(skin) total(before) onecol iqrmiddle(",") saving("$projectdir/output/data/tables.csv", cell(A120) sheetmodify keepcellfmt) ///
	vars(agegroup cat %5.1f \ ///
		 male bin %5.1f \ ///
		 bmicat cat %5.1f \ ///
		 obese4cat cat %5.1f \ ///
		 ethnicity cat %5.1f \ ///
		 imd cat %5.1f \ ///
		 smoke cat %5.1f \ ///
		 chronic_cardiac_disease bin %5.1f \ /// 
		 stroke bin %5.1f \ ///
		 combined_cv_comorbid bin %5.1f \ ///
		 hypertension bin %5.1f \ ///
		 diabcat cat %5.1f \ ///
		 ckd_egfr cat %5.1f \ ///
		 esrf bin %5.1f \ ///
		 gp_consult_count contn %5.1f \ ///
		 steroidcat bin %5.1f \ ///
		 oral_prednisolone_3m_0m contn %5.1f \ ///
		 standtnf bin %5.1f \ ///
		 standil23 bin %5.1f \ ///
		 standil17 bin %5.1f )
		 
table1_mc, by(bowel) total(before) onecol iqrmiddle(",") saving("$projectdir/output/data/tables.csv", cell(A180) sheetmodify keepcellfmt) ///
	vars(agegroup cat %5.1f \ ///
		 male bin %5.1f \ ///
		 bmicat cat %5.1f \ ///
		 obese4cat cat %5.1f \ ///
		 ethnicity cat %5.1f \ ///
		 imd cat %5.1f \ ///
		 smoke cat %5.1f \ ///
		 chronic_cardiac_disease bin %5.1f \ /// 
		 stroke bin %5.1f \ ///
		 combined_cv_comorbid bin %5.1f \ ///
		 hypertension bin %5.1f \ ///
		 diabcat cat %5.1f \ ///
		 ckd_egfr cat %5.1f \ ///
		 esrf bin %5.1f \ ///
		 gp_consult_count contn %5.1f \ ///
		 steroidcat bin %5.1f \ ///
		 oral_prednisolone_3m_0m contn %5.1f \ ///
		 standtnf bin %5.1f \ ///
		 standjaki bin %5.1f )	
	
*Table 2 - high cost drugs (v non-high cost) - single group contribution only
table1_mc, by(imiddrugcategory) total(before) onecol iqrmiddle(",") saving("$projectdir/output/data/tables.csv", cell(A240) sheetmodify keepcellfmt) ///
	vars(agegroup cat %5.1f \ ///
		 male bin %5.1f \ ///
		 bmicat cat %5.1f \ ///
		 obese4cat cat %5.1f \ ///
		 ethnicity cat %5.1f \ ///
		 imd cat %5.1f \ ///
		 smoke cat %5.1f \ ///
		 chronic_cardiac_disease bin %5.1f \ /// 
		 stroke bin %5.1f \ ///
		 combined_cv_comorbid bin %5.1f \ ///
		 hypertension bin %5.1f \ ///
		 diabcat cat %5.1f \ ///
		 ckd_egfr cat %5.1f \ ///
		 esrf bin %5.1f \ ///
		 gp_consult_count contn %5.1f \ ///
		 steroidcat bin %5.1f \ ///
		 oral_prednisolone_3m_0m contn %5.1f )

*2a IMID only: TNFi vs standard systemic
table1_mc, by(standtnf) total(before) onecol iqrmiddle(",") saving("$projectdir/output/data/tables.csv", cell(A240) sheetmodify keepcellfmt) ///
	vars(agegroup cat %5.1f \ ///
		 male bin %5.1f \ ///
		 bmicat cat %5.1f \ ///
		 obese4cat cat %5.1f \ ///
		 ethnicity cat %5.1f \ ///
		 imd cat %5.1f \ ///
		 smoke cat %5.1f \ ///
		 chronic_cardiac_disease bin %5.1f \ /// 
		 stroke bin %5.1f \ ///
		 combined_cv_comorbid bin %5.1f \ ///
		 hypertension bin %5.1f \ ///
		 diabcat cat %5.1f \ ///
		 ckd_egfr cat %5.1f \ ///
		 esrf bin %5.1f \ ///
		 gp_consult_count contn %5.1f \ ///
		 steroidcat bin %5.1f \ ///
		 oral_prednisolone_3m_0m contn %5.1f )

*2b IMID only:  IL-12/23i vs standard systemic
table1_mc, by(standil23) total(before) onecol iqrmiddle(",") saving("$projectdir/output/data/tables.csv", cell(A240) sheetmodify keepcellfmt) ///
	vars(agegroup cat %5.1f \ ///
		 male bin %5.1f \ ///
		 bmicat cat %5.1f \ ///
		 obese4cat cat %5.1f \ ///
		 ethnicity cat %5.1f \ ///
		 imd cat %5.1f \ ///
		 smoke cat %5.1f \ ///
		 chronic_cardiac_disease bin %5.1f \ /// 
		 stroke bin %5.1f \ ///
		 combined_cv_comorbid bin %5.1f \ ///
		 hypertension bin %5.1f \ ///
		 diabcat cat %5.1f \ ///
		 ckd_egfr cat %5.1f \ ///
		 esrf bin %5.1f \ ///
		 gp_consult_count contn %5.1f \ ///
		 steroidcat bin %5.1f \ ///
		 oral_prednisolone_3m_0m contn %5.1f )

*2c Psoriasis, PsA, AS only: IL-17i vs standard systemic
table1_mc, by(standil17) total(before) onecol iqrmiddle(",") saving("$projectdir/output/data/tables.csv", cell(A240) sheetmodify keepcellfmt) ///
	vars(agegroup cat %5.1f \ ///
		 male bin %5.1f \ ///
		 bmicat cat %5.1f \ ///
		 obese4cat cat %5.1f \ ///
		 ethnicity cat %5.1f \ ///
		 imd cat %5.1f \ ///
		 smoke cat %5.1f \ ///
		 chronic_cardiac_disease bin %5.1f \ /// 
		 stroke bin %5.1f \ ///
		 combined_cv_comorbid bin %5.1f \ ///
		 hypertension bin %5.1f \ ///
		 diabcat cat %5.1f \ ///
		 ckd_egfr cat %5.1f \ ///
		 esrf bin %5.1f \ ///
		 gp_consult_count contn %5.1f \ ///
		 steroidcat bin %5.1f \ ///
		 oral_prednisolone_3m_0m contn %5.1f )

*2d IMID only: JAKi vs standard systemic 
table1_mc, by(standjaki) total(before) onecol iqrmiddle(",") saving("$projectdir/output/data/tables.csv", cell(A240) sheetmodify keepcellfmt) ///
	vars(agegroup cat %5.1f \ ///
		 male bin %5.1f \ ///
		 bmicat cat %5.1f \ ///
		 obese4cat cat %5.1f \ ///
		 ethnicity cat %5.1f \ ///
		 imd cat %5.1f \ ///
		 smoke cat %5.1f \ ///
		 chronic_cardiac_disease bin %5.1f \ /// 
		 stroke bin %5.1f \ ///
		 combined_cv_comorbid bin %5.1f \ ///
		 hypertension bin %5.1f \ ///
		 diabcat cat %5.1f \ ///
		 ckd_egfr cat %5.1f \ ///
		 esrf bin %5.1f \ ///
		 gp_consult_count contn %5.1f \ ///
		 steroidcat bin %5.1f \ ///
		 oral_prednisolone_3m_0m contn %5.1f )

*2!e IMID only: RTX vs standard systemic
table1_mc, by(standritux) total(before) onecol iqrmiddle(",") saving("$projectdir/output/data/tables.csv", cell(A240) sheetmodify keepcellfmt) ///
	vars(agegroup cat %5.1f \ ///
		 male bin %5.1f \ ///
		 bmicat cat %5.1f \ ///
		 obese4cat cat %5.1f \ ///
		 ethnicity cat %5.1f \ ///
		 imd cat %5.1f \ ///
		 smoke cat %5.1f \ ///
		 chronic_cardiac_disease bin %5.1f \ /// 
		 stroke bin %5.1f \ ///
		 combined_cv_comorbid bin %5.1f \ ///
		 hypertension bin %5.1f \ ///
		 diabcat cat %5.1f \ ///
		 ckd_egfr cat %5.1f \ ///
		 esrf bin %5.1f \ ///
		 gp_consult_count contn %5.1f \ ///
		 steroidcat bin %5.1f \ ///
		 oral_prednisolone_3m_0m contn %5.1f )

		 log close
		 
		 
