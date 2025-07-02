# Titanic Survival Analysis Project 🚢

This project explores passenger survival patterns from the Titanic disaster using SQL queries.

## 🔍 Key Findings (Based on My Dataset)
- **Total passengers**: 887  
- **Survivors**: 342 (38.6%)  
- **Female survival rate**: 74.2%  
- **Male survival rate**: 18.9%  
- **Highest survival by class**: 1st class (63%)  

## 🛠 How to Reproduce
1. Download the dataset:
   ```bash
   curl -o titanic.csv https://web.stanford.edu/class/archive/cs/cs109/cs109.1166/stuff/titanic.csv.
   how to run 
    sqlite3
mode csv
.import titanic.csv titanic
SELECT COUNT(*) FROM titanic;

-- Survival by passenger class
SELECT 
    Pclass,
    COUNT(*) AS total_passengers,
    SUM(Survived) AS survivors,
    ROUND(AVG(Survived)*100, 1) AS survival_percent
FROM titanic
GROUP BY Pclass;

-- Average age of survivors
SELECT ROUND(AVG(Age),1) FROM titanic WHERE Survived = 1;

Insights 
Women and children had priority during evacuation

1st class passengers had 3x higher survival rate than 3rd class

Age significantly impacted survival chances