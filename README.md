Movie Database by Mary Stewart, Nathan Skinner, Yonas Michael, Zachary Evans


Our goal is to create a movie database with relevant information where users can search to find out where, if any, goofs exist in their favorite movies or tv shows. The user will be able to easily search for a movie or series by title and find any goofs, bloopers and other mistakes that made it into the final cut.
 
To create the database we first gathered more than 40000 movie titles from "The Movie Dataset"(https://www.kaggle.com/datasets/rounakbanik/the-movies-dataset) CSV.  Then we used an API from https://cinemagoer.github.io/ in which we were able to scrape goofs for the movies found in our movie list.

data were imported and cleaned using python (see import_goofs.ipynb and movie_List_raw.ipynb)
While preparing the data to be loaded in to SQL databases we first had to remove the "," from all rows of the "Movie Dataset". We had to do this step multiple times do to some of the movie titles having commas within their titles and this was disrupting the format of the the cleaned CSV. While prparing the CSV with the scrapped data from Cinemagoer we used the same strategy of removing all of the commas from each column. Lastly we made sure to remove the adult title and goofs from our CSVs to keep the list of movies and goofs more appropriate.  Once that was complete we were ready to upload the CSVs into our SQLDatabases.

When creating our databases we were able to have a Movies database  and a Goofs  database. In the Movies databse anyone can see the movie title, release date of that movie,the imdb id(incase this is the prefered platform to search movies and reviews), and lastly a imdb popularity Score. In the "Goofs" database the movie title, the imdb id, a categorization of the type of goof, and lastly the goof that was displayed on film. Please see the ERD below:

![alt text](https://github.com/ymichael14/Project2_Group4/blob/cdeb25f5f2159ca3fb41f079998f643de26d1972/Project_Schema%20_Script/QuickDBD-Movie_GoofsSQL.png)

Once the databasees were created certain question we wanted answered  was : What goofs are in what movie?, Has the frequency of goofs increased/decreased in as filmaking technology advances, and Is there a correlation between ratings and goofs? This analysis was done by use of sqlalchemy module. Pandas data frames were inserted into a sql database, then using MySQL, we extracted relevant data to our questions (see sql_database.ipynb for full code).

When looking for a relation of more or less  goofs occurng over time it can be seen that many of the movies that came out in more recent years of our dataset have more goofs than movies that came out in a earlier years within the 1900s.  This could be due to many factors like what type of movie is such as action movie or a animated childrens movie, and when the movie came out.  With several movies being produced in the eraly 1900s offers less of a crowd to catch goofs and less people who have seen the movie in general. Lastly the popularity rating does not have an effect on the effect of goofs when looking at the most goofs by imdb_id we have used certain queries to search the movies with the most amount of goofs and their scroe,  and there is no corealtion as movies that have many goofs are rated at avg popularity rates.  


![alt text](https://github.com/ymichael14/Project2_Group4/blob/main/plots/goofs_by_year.png)


![alt text](https://github.com/ymichael14/Project2_Group4/blob/main/plots/goofs_pop.png)


