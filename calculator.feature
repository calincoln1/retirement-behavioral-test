Feature: Full Retirement Age Calculator

Calculator used for calculating retirement age based on birth year and birth month.

@BoundaryLowest
Scenario: Lowest Edge Case
Given I have entered "1954" as the year
And I have entered "11" as the month
When I press enter
Then the result should be "66" and "0" months

@BoundaryHighest
Scenario: Highest Edge Case
Given I have entered "1960" as the year
And I have entered "0" as the month
When I press enter
Then the result should be "67" and "0" months

@MainScenarios
Scenario: Non Edge Cases
Given I have entered "<input_year>" as the year
And I have entered "<input_month>" as the month
When I press enter
Then the result should be "<out_year>" and "<out_month>" months

Examples:
| input_year | input_month | out_year | out_month |
| 1955       | 0           | 66       | 2         |
| 1955       | 11          | 66       | 2         |
| 1956       | 0           | 66       | 4         |
| 1956       | 11          | 66       | 4         |
| 1957       | 0           | 66       | 6         |
| 1957       | 11          | 66       | 6         |
| 1958       | 0           | 66       | 8         |
| 1958       | 11          | 66       | 8         |
| 1959       | 0           | 66       | 10        |
| 1959       | 11          | 66       | 10        |