<p align = 'center'><h2>Movie Database</h2></p>

<p align = 'center'><h3>By Mary Stewart, Nathan Skinner, Yonas Michael, Zachary Evans</h3></p> 


Our goal is to create a movie database with relevant information where users can search to find out where, if any, goofs exist in their favorite movies or tv shows. The user will be able to easily search for a movie or series by title and find any goofs, bloopers and other mistakes that made it into the final cut.
 
To create the database, we first gathered more than 40000 movie titles from "The Movie Dataset"(https://www.kaggle.com/datasets/rounakbanik/the-movies-dataset) CSV.  Then we used an API from https://cinemagoer.github.io/ in which we were able to scrape goofs for the movies found in our movie list.

data were imported and cleaned using python (see import_goofs.ipynb and movie_List_raw.ipynb)
While preparing the data to be loaded into SQL databases we first had to remove the "," from all rows of the "Movie Dataset". We had to do this step multiple times do to some of the movie titles having commas within their titles and this was disrupting the format of the cleaned CSV. While preparing the CSV with the scrapped data from Cinemagoer we used the same strategy of removing all of the commas from each column. Lastly, we made sure to remove the adult title and goofs from our CSVs to keep the list of movies and goofs more appropriate.  Once that was complete, we were ready to upload the CSVs into our SQLDatabases.

When creating our databases we were able to have a Movies database and a Goofs  database. In the Movies database anyone can see the movie title, release date of that movie, the imdb_id (incase this is the preferred platform to search movies and reviews), and lastly an IMDB popularity Score. In the "Goofs" database the movie title, the imdb_id, a categorization of the type of goof, and lastly the goof that was displayed on film. Please see the ERD below:

![alt text](https://github.com/ymichael14/Project2_Group4/blob/cdeb25f5f2159ca3fb41f079998f643de26d1972/Project_Schema%20_Script/QuickDBD-Movie_GoofsSQL.png)

Once the databases were aimed to answer our questions : What goofs are in what movie?, Has the frequency of goofs increased/decreased in as filmmaking technology advances, and is there a correlation between ratings and goofs? This analysis was done by use of sqlalchemy module. Pandas data frames were inserted into a sql database, then using MySQL, we extracted relevant data to our questions (see sql_database.ipynb for full code).

When looking for a relation of more or less goofs occurring over time it can be seen that many of the movies that came out in more recent years of our dataset have more goofs than movies that came out in earlier years within the 1900s.  This could be due to many factors like what type of movie is such as action movie or an animated children’s movie, and when the movie came out.  With several movies being produced in the early 1900s offers less of a crowd to catch goofs and less people who have seen the movie in general. Lastly there was a positive relationship between the popularity and number of goofs. As popularity increases, so do the number of goofs. This likely reflects the willingness of individuals to add goofs into IMDB, if a movie is more popular.


![alt text](https://github.com/ymichael14/Project2_Group4/blob/main/plots/goofs_by_year.png)


![alt text](https://github.com/ymichael14/Project2_Group4/blob/main/plots/goofs_pop.png)


