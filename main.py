from db import run_query_select, run_update_query

movies = run_query_select("SELECT * FROM movies")
for m in movies:
    print(m)

name = input("Enter your name: ")
movies = run_query_select("SELECT * FROM movies WHERE movie_name LIKE ?", (f"{name}%",))
for m in movies:
    print(m)

movie_name = input("Enter your name: ")
genre = input("Enter your genre: ")
country = input("Enter your country: ")
language = input("Enter your language: ")
year = int(input("Enter your year: "))
revenue = input("Enter your revenue: ")
movies = run_update_query("INSERT INTO movies(movie_name, genre, country, language, year, revenue) VALUES (?, ?, ?, ?, ?, ?) ", (movie_name,
genre, country, language, year, revenue))

