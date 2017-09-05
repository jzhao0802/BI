# copy to my local computer
for m in IPF_Cohort.csv/IPF_Cohort.csv Non_IPF_Asthma_COPD_Cohort.csv/Non_IPF_Asthma_COPD_Cohort.csv Representative_Sample_Asthma_COPD_Cohort.csv/Representative_Sample_Asthma_COPD_Cohort.csv Scoring_Sample_V2.csv/Scoring_Sample_V2.csv
do
	echo $m
	fname=`basename $m .csv`
	sed -n -e '1,1000p' $m > "norman_subset/${fname}.csv"
done


# run on server
cd "F:\Hui\Project_2016\BI_IPF_2016\02_data"
for m in IPF_Cohort.csv/IPF_Cohort.csv Non_IPF_Asthma_COPD_Cohort.csv/Non_IPF_Asthma_COPD_Cohort.csv Representative_Sample_Asthma_COPD_Cohort.csv/Representative_Sample_Asthma_COPD_Cohort.csv Scoring_Sample_V2.csv/Scoring_Sample_V2.csv
do
	echo $m
	fname=`basename $m .csv`
	cp $m "/f/Norman/BI_IPF2017/data/raw/${fname}.csv"
done


