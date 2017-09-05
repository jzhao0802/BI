for m in IPF_Cohort.csv/IPF_Cohort.csv Non_IPF_Asthma_COPD_Cohort.csv/Non_IPF_Asthma_COPD_Cohort.csv Representative_Sample_Asthma_COPD_Cohort.csv/Representative_Sample_Asthma_COPD_Cohort.csv Scoring_Sample_V2.csv/Scoring_Sample_V2.csv
do
	echo $m
	fname=`basename $m .csv`
	sed -n -e '1,1000p' $m > "norman_subset/${fname}.csv"
done