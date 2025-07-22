create database project;
USE project;
SELECT COUNT(*) AS total_rows
FROM Dataset;

SELECT COUNT(*) AS total_columns
FROM information_schema.columns
WHERE table_schema = 'project' 
  AND table_name = 'Dataset';

############### DATA EXPLORATION ####################
# 1. Final_cost
SELECT
    COUNT(*) AS Final_Cost,
    AVG(Final_Cost) AS avg_finalcost,
    SUM(Final_Cost) AS sum_finalcost,
    MIN(Final_Cost) AS min_finalcost,
    MAX(Final_cost) AS max_finalcost
FROM
    Dataset;

# 2. Final_Sales

SELECT
    COUNT(*) AS Final_Sales,
    AVG(Final_Sales) AS avg_finalsales,
    SUM(Final_Sales) AS sum_finalsales,
    MIN(Final_Sales) AS min_finalsales,
    MAX(Final_Sales) AS max_finalsales
FROM
    Dataset;
    
    # 3. Return MRP
    
    SELECT
    COUNT(*) AS RtnMRP,
    AVG(RtnMRP) AS avg_RtnMRP,
    SUM(RtnMRP) AS sum_RtnMRP,
    MIN(RtnMRP) AS min_RtnMRP,
    MAX(RtnMRP) AS max_RtnMRP
FROM
    Dataset;
    
	SELECT
    COUNT(*) AS Quantity,
    AVG(Quantity) AS avg_Quantity,
    SUM(Quantity) AS sum_Quantity,
    MIN(Quantity) AS min_Quantity,
    MAX(Quantity) AS max_Quantity
FROM
    Dataset;
    
#### Check for missing values ###
SELECT 
    'missing_values' AS profile_type,
    COUNT(*) AS missing_values_count
FROM 
    Dataset
WHERE 
    DrugName IS NULL;
    
    SELECT *
FROM Dataset;

    SELECT *
FROM Dataset
WHERE DrugName = '';

SELECT COUNT(*) AS empty_cells_count
FROM Dataset
WHERE DrugName = '';

########## Data Cleaning and Preprocessing ############

### 1. Filtering the missing rows

SELECT *
FROM Dataset
WHERE DrugName ='';

DELETE FROM Dataset
WHERE TRIM(DrugName) = '';
 
 #############################################
 
 SELECT Specialisation, COUNT(*) AS count 
 FROM Dataset GROUP BY Specialisation ORDER BY COUNT(*) DESC;

SELECT DrugName, COUNT(*) AS count 
FROM Dataset 
GROUP BY DrugName 
ORDER BY COUNT(*) DESC;

SELECT SubCat, COUNT(*) AS count 
FROM Dataset 
GROUP BY SubCat 
ORDER BY COUNT(*) DESC;

SELECT SubCat1, COUNT(*) AS count 
FROM Dataset 
GROUP BY SubCat1 
ORDER BY COUNT(*) DESC;

SELECT *
FROM Dataset;