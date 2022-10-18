Movie Database by Mary Stewart, Nathan Skinner, Yonas Michael, Zachary Evans


 Our goal is to create a movie database with relevant information where users can search to find out where, if any, goofs exist in their favorite movies or tv shows. The user will be able to easily search for a movie or series by title and find any goofs, bloopers and other mistakes that made it into the final cut.
 
To create the database we first gathered more than 40000 movie titles from "The Movie Dataset"(https://www.kaggle.com/datasets/rounakbanik/the-movies-dataset) CSV.  Then we used an API from https://cinemagoer.github.io/ in which we were able to scrape goofs for the movies found in the our CSV
While preparing the data to be loaded in to SQL databases we first had to remove the "," from all rows of the "Movie Dataset". We had to do this step multiple times do to some of the movie titlkes having commas within their titles and this was disrupting the format of the the cleaned CSV.  Omce the CSV was cleanede we were able to use an API search to gather many goofs from the movies listed.  While prparing the CSV with the scrapped data from Cinemagoer we used the same strategy of removing all of the commas from each column. lastly we made sure to remove the adult title and goofs from our CSVs to keep the list of movies and goofs more appropriate.  Once that was complete we were ready to upload the CSVs into our SQLDatabases.

When creating our databases we were able to have a Movies database  and a Goofs  database. In the Movies databse anyone can see the movie title, release date of that movie,the imdb id( incase this is the prefered platform to search movies and reviews), and lastly a imdb popularity Score. In the "Goofs" database the movie title, the imdb id, a categorization of the type of goof, and lastly the goof that was displayed on film. We were alos able to plot data from the databases to asnwer our research quiestions through SQLAlchemy.

![alt text](https://github.com/ymichael14/Project2_Group4/blob/cdeb25f5f2159ca3fb41f079998f643de26d1972/Project_Schema%20_Script/QuickDBD-Movie_GoofsSQL.png)

Once the databasees were created certain question we wanted answered  was : What goofs are in what movie?, Has the frequency of goofs increased/decreased in as filmaking technology advances, and Is there a correlation between ratings and goofs?. We were able to display the goofs that were caught by fans and movie critics of more than 40000 movies.  When looking for a relation of more or less  goofs occurng over time it can be seen that the number of goofs has definetly decreased over time especially after reaching high points within 1970 and 1986. When looking at the provided bar chart there are peaks and valleys of goofs that are based on periods in which movies were the  most popular forms of entertainemnt,along with the advancement of the technology used to create theses films, but it can be seen as time went on less goffs begin to occur and are consistent with the goof rates of the early 1900s.  Lastly the popularity scores have minor effcets on the number of goofs found in each moive. As most movies have less than 100 goofs. While there some outliers that have low scores and higher amounts of goofs and movies that were scored vry high that have much fewer mistakes.  
 

![alt text](https://github.com/ymichael14/Project2_Group4/blob/main/plots/goofs_by_year.png)


![alt text](https://github.com/ymichael14/Project2_Group4/blob/main/plots/goofs_pop.png)


