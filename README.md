# Information Vitamins or Poison? Media Diets and the Health of Democracy

Data &amp; Analysis Compendium for the paper, entitled _Information Vitamins or Poison? Media Diets and the Health of Democracy_. 
This study has received [approval](docs/EthicalApproval.pdf) from the _Vrije Universteit Amsterdam_'s Research Ethics Committee.

## Draft
View the [draft of the paper here](report/draft.pdf).

## Code
The main code to prepare the data is located in the [src/data-processing](src/data-processing/). 
Of interest might be:

* [Prepare Data](src/data-processing/prep_data.md) This file cleans the data gathered with Survalyzer by [KiesKompas Amsterdam](https://www.kieskompas.nl/en/) and creates the raw variables for the [analysis](src/analysis/Analysis.md).

## Data

The [cleaned data file](data/intermediate/cdemocr-info-env.RData) might be of interest.  This file contains demographic information as well as .... 

## Results

The main code to conduct the multiverse analyses is combined in the [src/analysis/analysis.md](src/analysis/Analysis.md). 
Of interest might be:
* [Code](src/analysis/) to conduct the separate multiverse analyses
* [Figures](report/figures) visualising the descriptives and the results of the analyses 

## Replication 

To run all scripts, call [`doit`](https://github.com/ccs-amsterdam/ccs-compendium) in your command line:

```
sudo pip3 install doit
doit
```

## Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to
abide by its term.


