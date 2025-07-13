## 1985 Cars Dataset Analysis

This is an exercise from Lear R on Codecademy.

This project explores the 1985 Cars dataset from the UCI Machine Learning Repository in a step-by-step Q&A format, using tidyverse tools in R. The goal is to clean, explore, and filter the data to choose a car for your collection based on highway mileage, engine size, and brand preference.

1. What good is an analysis if we don’t even have the tools to perform the said analysis?
Some of the tools you will need for this analysis are the readr and dplyr packages from the tidyverse. Load them at the top of your .Rmd file.

The last tool we need is the data itself!
The file cars85.csv stores the data. Load it into a dataframe called cars.

3. It’s always a good idea to inspect the data you load into R.
Inspect cars with head() and summary() to understand what you're working with.

Each row in this dataset represents a single car. You can analyze fuel efficiency, engine specs, and more.

4. After inspecting the dataframe, you notice something odd about the normalized_losses column.
This column has many missing values represented by ?. Remove it from the dataset.

5. Print the column names of cars. Are they clear and descriptive?

Some column names (like symboling) are unclear and should be renamed.

6. Rename symboling to risk_factor.

7. Create a variable called mpg_threshold with the value 30.
This is the threshold for desirable highway miles-per-gallon.

8. Add a new column called mpg_diff_from_threshold.
This column will show how much each car's highway MPG differs from the threshold.

9. Filter for cars with more than 30 MPG on the highway.

10. Which cars have the highest highway MPG?
Sort them by mpg_diff_from_threshold in descending order.

11. Suppose you want your next car to have a large engine.
Order all cars by engine_size in descending order.

12. Choose a preferred make of car.
Set it as a variable.

13. Filter cars to only include those from your chosen make.

14. Order chosen_make_details by engine_size descending.

15. The process of buying a new car can cause a lot of stress...
But analysis helps you make data-driven decisions.
By cleaning, exploring, and filtering the dataset, you made your car-buying decision easier — and added a valuable new car to your collection!
