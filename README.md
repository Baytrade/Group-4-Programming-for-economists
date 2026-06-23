# Income and Overweight in Four Dutch Cities

This repository contains the group assignment for Programming for Economists. The project examines the relationship between average standardised household income and overweight prevalence in Amsterdam, Groningen, Maastricht and Utrecht in 2012, 2016, 2020 and 2022.

## Research question

To what extent is average standardised household income related to overweight prevalence in Amsterdam, Utrecht, Maastricht and Groningen between 2012 and 2022, and how did overweight prevalence change around the start of the COVID-19 pandemic?

## Project structure

- `Group4_Assignment.Rmd`: complete report, code and analysis
- `Group4_Assignment.pdf`: final knitted report
- `run_all.R`: restores the required packages and renders the report
- `renv.lock`: records the package versions used in the project
- `ProgrForEconom.Rproj`: RStudio project file
- `data/`: contains the CBS datasets used in the analysis

## Required data files

The following files must be located in the `data` folder:

- `Inkomen2012.csv`
- `Inkomen2016.csv`
- `Inkomen2020.csv`
- `Inkomen2022.csv`
- `Overgewicht2012.csv`
- `Overgewicht2016.csv`
- `Overgewicht2020.csv`
- `Overgewicht2022.csv`
- `data_clean.csv`

## Data sources

The income data were obtained from CBS StatLine table 86161NED:

https://www.cbs.nl/nl-nl/cijfers/detail/86161NED

The overweight data were obtained from the following CBS Health Monitor tables:

- 2012: https://www.cbs.nl/nl-nl/cijfers/detail/82166NED
- 2016: https://www.cbs.nl/nl-nl/cijfers/detail/83674NED
- 2020: https://www.cbs.nl/nl-nl/cijfers/detail/85012NED
- 2022: https://www.cbs.nl/nl-nl/cijfers/detail/85563NED

For every dataset, observations were selected for Amsterdam, Groningen, Maastricht and Utrecht.

The income files contain household income information, including average standardised household income. The Health Monitor files contain total overweight and severe overweight prevalence. The downloaded files were renamed using the filenames listed above.

Municipality boundaries for the spatial analysis are downloaded automatically from the CBS/PDOK API while the report is rendered.

## How to reproduce the report

1. Clone or download this repository.
2. Open `ProgrForEconom.Rproj` in RStudio.
3. Confirm that the required CSV files are located in the `data` folder.
4. Run the following command in the R Console:

   `source("run_all.R")`

The script restores the required R package versions using `renv.lock` and renders `Group4_Assignment.Rmd` as a PDF.

An internet connection is required to restore packages and download the municipality boundaries from PDOK.