# usdatasets

The `usdatasets` package provides a **diverse collection of U.S.-exclusive datasets**, encompassing various fields such as crime, economics, education, finance, energy, healthcare, and more. This package serves as a valuable resource for researchers and analysts seeking to perform in-depth analyses and derive insights from U.S.-specific data.

Each dataset in the `usdatasets` package is named with a suffix at the end, indicating the type or class of the dataset, making it easier to identify and work with different data structures.

## Installation

You can install the `usdatasets` package from CRAN with the following command:

```r
install.packages("usdatasets")

```

# Usage

Once the package is installed, you can load the datasets and begin analyzing the U.S.-specific data. Each dataset follows a consistent naming convention where the suffix indicates the data structure (e.g., _ts for time series, _df for data frames, etc.).

```r
# Load the package
library(usdatasets)

# Load a dataset
data("USAccDeaths_ts")

# View the dataset
head(USAccDeaths_ts)

# Load another dataset
data("USJudgeRatings_df")

# View the dataset
head(USJudgeRatings_df)


```

# Example Datasets

Here are some example datasets provided in the usdatasets package, illustrating the U.S.-specific focus and the naming convention for dataset structures:

- `UCBAdmissions_table`: Student Admissions at UC Berkeley.

- `USAccDeaths_ts`: Accidental Deaths in the U.S. from 1973 to 1978 (_ts for time series).

- `USJudgeRatings_df`: Lawyers' Ratings of State Judges in the U.S. Superior Court (_df for data frame).

- `UScitiesD_dist`: Distances Between U.S. Cities (_dist for distance matrices).

- `state_area_num`: U.S. State Area Facts (_num for numeric data).`


<div class="tocify-extend-page" data-unique="tocify-extend-page" style="height: 0;"></div>
