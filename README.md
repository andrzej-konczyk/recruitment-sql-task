# SQL Task Solution

This repository contains a solution to the SQL recruitment task requiring aggregation of data from tables A and B.

## Task Data

### Table A:

| dimension_1 | dimension_2 | dimension_3 | measure_1 |
|-------------|-------------|-------------|-----------|
| a           | I           | K           | 1         |
| a           | J           | L           | 7         |
| b           | I           | M           | 2         |
| c           | J           | N           | 5         |

### Table B:

| dimension_1 | dimension_2 | measure_2 |
|-------------|-------------|-----------|
| a           | J           | 7         |
| b           | J           | 10        |
| d           | J           | 4         |

### Table MAP:

| dimension_1 | correct_dimension_2 |
|-------------|---------------------|
| a           | W                   |
| a           | W                   |
| b           | X                   |
| c           | Y                   |
| b           | X                   |
| d           | Z                   |

## Task Requirements

* Create a single SQL query with aggregations of measure_1 and measure_2 for distinct pairs of dimension_1 and dimension_2
* Correct the dimension_2 values using the MAP table
* Replace NULL values with 0 for measures
* Use SUM for aggregation
* The result should include four columns: dimension_1, dimension_2, measure_1, measure_2