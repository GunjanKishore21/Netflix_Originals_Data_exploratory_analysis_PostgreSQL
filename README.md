# Netflix_Originals_Data_exploratory_analysis_PostgreSQL
Title:Netflix Originals Data Exploration and Analysis
Problem Statement:
The task involves analyzing the Netflix Originals dataset to derive insights about movie genres, runtime, IMDb
scores, and premiere dates. The dataset holds valuable information regarding the content Netflix produces, and
understanding these attributes can help identify trends and patterns. By using SQL queries, the aim
is to perform complex filtering, aggregation, and sorting operations, providing meaningful insights for business
decisions.
Dataset Used: Netflix_Originals
- Title: The title of the Netflix Original
- GenreID: Genre ID of the movie/show
- Runtime: Duration of the movie/show in minutes
- IMDBScore: IMDb score of the movie/show
- Language: Language in which the movie/show is available
- Premiere_Date: The date the movie/show premiered
Objective:
The objective is to use MySQL queries to perform advanced filtering, grouping, and
sorting on the Netflix Originals dataset.
1. Retrieve all Netflix Originals with an IMDb score greater than 7, runtime greater than 100 minutes, and the
language is either English or Spanish.
2. Find the total number of Netflix Originals in each language, but only show those languages that have more
than 5 titles.
3. Get the top 3 longest-running movies in Hindi language sorted by IMDb score in descending order.
4. Retrieve all titles that contain the word "House" in their name and have an IMDb score greater than 6.
5. Find all Netflix Originals released between the years 2018 and 2020 that are in
either English, Spanish, or Hindi.
6. Find all movies that either have a runtime less than 60 minutes or an IMDb score less than 5, sorted by
Premiere Date.
7. Get the average IMDb score for each genre where the genre has at least 10 movies.
8. Retrieve the top 5 most common runtimes for Netflix Originals.
9. List all Netflix Originals that were released in 2020, grouped by language, and show the total count of titles for
each language.
10. Create a new table that enforces a constraint on the IMDb score to be between 0 and 10 and the runtime to
be greater than 30 minutes
