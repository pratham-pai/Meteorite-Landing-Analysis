# Meteorite Landings Analysis Project

Welcome to the Meteorite Landings Analysis project documentation! This repository contains SQL queries and analysis conducted on a dataset of meteorite landings. The project aims to explore temporal patterns, spatial distribution, and other insights related to meteorite landings using SQL queries.

## Dataset Overview
The dataset used in this project includes information about meteorite landings worldwide. It contains details such as the name of the meteorite, its classification, mass, year of landing, geographic coordinates, and other relevant attributes.

**Source:** [NASA Meteoritical Bulletin](https://catalog.data.gov/dataset/meteorite-landings)

## Project Objectives
The primary objectives of this project are:

- **Data Sourcing**: Identified a reliable source for the meteorite landing database, such as NASA's Meteoritical Bulletin or reputable scientific repositories.
  
- **Data Formatting and Cleaning**: Cleaned the dataset to ensure consistency and reliability, handling missing values, outliers, and inconsistencies in data formats.
  
- **SQL Query Analysis**: Utilized SQL queries to explore the dataset's structure and contents, extracting relevant insights about meteorite classes, landing locations, masses, and timestamps.
  
- **Temporal Analysis**: Analyzed temporal patterns in meteorite landings over different time intervals, such as years or decades, identifying trends, periodicities, and anomalies.
  
- **Spatial Exploration**: Explored the spatial distribution of meteorite landings across different geographic regions, using SQL spatial functions to calculate distances and visualize spatial patterns.
  
- **Insight Generation**: Derived meaningful insights from the dataset, uncovering trends, correlations, and anomalies using SQL queries and data visualization techniques.
  
- **Python Visualization**: Utilized Python libraries like Matplotlib, Seaborn, and Plotly to create visualizations that enhance understanding and interpretation of the data, including scatter plots, heatmaps, bar charts, and interactive maps.

## Contents of the Repository

### SQL Queries
The [meteorite_landings_analysis.sql](https://github.com/pratham-pai/Meteorite-Landing-Analysis/blob/main/SQL/meteorite_landings_analysis.sql) file contains a series of SQL queries used to analyze the meteorite landings dataset. Each query is extensively documented with explanations and context to aid in understanding its purpose and results.

### Dataset
The [MeteoriteLandings.csv](https://github.com/pratham-pai/Meteorite-Landing-Analysis/blob/main/Dataset/MeteoriteLandings.csv) file serves as the dataset containing comprehensive information about meteorite landings. It includes details such as meteorite names, classifications, masses, landing years, and geographic coordinates. This dataset is the primary data source used by the SQL queries in [meteorite_landings_analysis.sql](https://github.com/pratham-pai/Meteorite-Landing-Analysis/blob/main/SQL/meteorite_landings_analysis.sql).

### Delimiter Replacer
The [CSV_delimiter_replacement.py](https://github.com/pratham-pai/Meteorite-Landing-Analysis/blob/main/Dataset/Data%20Cleaning%20and%20Formatting/CSV_delimiter_replacement.py) file is a Python script specifically designed to replace delimiters within CSV files. It offers functionality to replace one delimiter (e.g., commas) with another delimiter (e.g., semicolons) within a CSV file.

### Python Files for Visualization
[Python scripts for visualization](https://github.com/pratham-pai/Meteorite-Landing-Analysis/tree/main/Python%20Visualizations) purposes are included in the repository. Each script corresponds to different visualization techniques applied to the meteorite landings dataset. Screenshots of the visualization outputs are provided to showcase the insights derived from the data through Python visualizations. Each Python visualization script is accompanied by an individual SQL file. These SQL files detail the extraction and manipulation of data used in the corresponding Python visualization script. Screenshots capturing the outputs of SQL queries are included in the repository. These screenshots demonstrate the results obtained from executing the SQL queries on the meteorite landings dataset.

## How to Use
To explore the analysis conducted in this project:

1. **Clone or Download Repository**: Clone or download the repository to your local machine using Git or by downloading the ZIP file from the GitHub page.

2. **Access SQL Queries**: Open the [meteorite_landings_analysis.sql](https://github.com/pratham-pai/Meteorite-Landing-Analysis/blob/main/SQL/meteorite_landings_analysis.sql) file in a text editor or SQL environment to view the SQL queries and their documentation.

3. **Execute SQL Queries**: Execute the SQL queries in your preferred SQL environment such as MySQL Workbench, Beekeeper Studio, or any other SQL client to analyze the meteorite landings dataset.

4. **Explore Python Visualizations**: Navigate to the Python scripts included in the repository, which accompany the SQL code. Run the Python scripts in your Python environment to generate visualizations. Additionally, review the included screenshots of the visualization outputs to gain insights into the meteorite landings analysis.

## License
This project is licensed under the MIT License. See the [LICENSE](https://github.com/pratham-pai/Meteorite-Landing-Analysis/blob/main/LICENSE) file for details.

Thank you for exploring the Meteorite Landings Analysis project! I hope you find the insights generated from the dataset valuable and informative.
