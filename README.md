# bmx

The dataset I chose for this assessment is the Body Measures Dataset from the National Health and Nutrition Examination Survey. 
These data were collected by the health technicians and were used to check how infants and children grow, and to analyse the trends of obesity and overweight in the U.S. 
The dataset includes body measurement data such as weight, height, head circumference, arm length and so on of infants and children. 
So, in this study, we want to make some data visualization to estimate the proportion of overweight and obesity, and the correlation between the factors. 
I made some plots such as the rose plot, box plot, and density plot as the visualization, which can help us analyse and estimate the proportion and the trend of overweight and obesity among American children.
The result shows that 43.9% of the children in this research were at the different levels of overweight or obesity, and the circumference of body parts indicate the overweight better than the height or length of the body parts.
<br>

AHDS_assessment <br>
├── BMX_D.csv (the raw data in this research, 27 columns, 9950 rows) <br>
├── BMX_clean.csv (the cleaned data used in the study, 15 columns, 5885 rows) <br>
├── data_cleaning.rmd (the R code used to clean the dataset) <br>
├── data_visualia]zation.Rmd (the R code used to create the plots for the data visualization) <br>
├── AHDS_assessment2_report.Rmd (the R code used to create the report for this assessment) <br>
├── AHDS_assessment2_report.docx (the final report for this assessment) <br>
├── snakemake_bmx <br>
│   ├── environment.yml (the file to set up the environmrnt for the snakemake) <br>
│   ├── Snakefile (the file to identify the rule in the snakemake and to run the R scripts) <br>
│   ├── 0-data-cleaning.R (the R code used to clean the dataset) <br>
│   ├── 1-roseplot.R (the R code used to create the rose plot for the BMI categories) <br>
│   ├── 2-boxplot.R (the R code used to create the box plot for the BMX data) <br>
│   ├── 3-scatterplot.R (the R code used to create the scatter plot for the relationship between weight and standing height) <br>
│   ├── 4-densityplot-bmi.R (the R code used to create the density plot for the BMI data) <br>
│   ├── 5-densityplot-bmx.R (the R code used to create the density plot for the BMX data) <br>
│   ├── 6-groupboxplot.R (the R code used to create the box plot for the BMX data grouped by the BMI categories) <br>
│   ├── 7-groupdensityplot.R (the R code used to create the density plot for the BMX data grouped by the BMI categories) <br>
│   ├── report.Rmd (the R code used to produce the repot for this research) <br>
│   ├── data <br>
│   │   ├── BMX_D.csv (the raw data in this research, 27 columns, 9950 rows) <br>
│   │   └── BMX_clean.csv (the cleaned data used in the study, 15 columns, 5885 rows) <br>
│   ├── plot <br>
│   │   ├── 1-roseplot.png (the rose plot for the BMI categories) <br>
│   │   ├── 2-boxplot.png (the box plot for the BMX data) <br>
│   │   ├── 3-scatterplot.png (the scatter plot for the relationship between weight and standing height) <br>
│   │   ├── 4-densityplot-bmi.png (the density plot for the BMI data) <br>
│   │   ├── 5-densityplot-bmx.png (the density plot for the BMX data) <br>
│   │   ├── 6-groupboxplot.png (the box plot for the BMX data grouped by the BMI categories) <br>
│   └── └── 7-groupdensityplot.png (the density plot for the BMX data grouped by the BMI categories) <br>
└── README.md <br>

In the data visualization part, I used functions in R package "ggiraphExtra" to create some of the plots. 
But unfortunately, this package cannot be installed to the conda environment.
So, there are some different between the plots produced by the original Rmarkdown file and those produced through snakemake.
<br>

Here is the link to the Git Hub: https://github.com/nilykun/bmx
