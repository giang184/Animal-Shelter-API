# Animal Shelter API by Andrew Giang
This is a one day project to create an animal shelter API. 

## Technology Used
* _Ruby_
* _rails_
* _Docker_
* _PostgresSQL_
* _Ruby Gems: rspec, pry, faker, Kaminari

## Objectives

* Full CRUD functionality for Animal Shelter API.
* Routes are in place to return API calls.
* A RANDOM endpoint that randomly returns a park/business/animal.
* A second custom endpoint that accepts parameters (example: a SEARCH route that allows users to search by specific park names).
* Model scopes to process parameters from API calls.
* Randomized data with Faker or your own custom seed code.
* Further exploration feature included: pagination 

## Set up and Installation
* This project runs on Ruby or Docker. You need to have either application installed on your local machine.
* Download or Clone this directory into your local drive.
* In your terminal, go to the project's root directory and run `compose up --build`
* If you nagivate to `http://localhost:3000/` without setting up a database, though, you'll get a `PG::ConnectionBad` error.
* You will need to create the database and seed the database in order for the live server to render. To create a database on your local machine, you will need to run `rake db:create` and run migrations to create this project's tables by running `rake db:migrate` and `rake db:test:prepare`
* Once the database is set up, you can navigate to `http://localhost:3000/` to see the landing page
* If you want to seed the database with fake data, you can run `rake db:seed`
* When you're done running the server, you should always type in `docker-compose down` to gracefully stop the container.

## API and Endpoints Information
All endpoints can also be rendered on Heroku by replace `http://localhost:3000` with `https://giang-animal-shelter-api.herokuapp.com`


`http://localhost:3000/animals`
`https://giang-animal-shelter-api.herokuapp.com/animals`
* returns a list of all animals in the database.

`http://localhost:3000/animals?page=1`
* returns a the specified page (25 elements each) of the database.

`http://localhost:3000/random`
* returns a random animal in the database.

`http://localhost:3000/random?count=4`
* returns 4 random animals in the database.

`http://localhost:3000/search?breed=spaniel`
* returns all animals whose breed includes the word spaniel.

`http://localhost:3000/search?max_age=10`
* returns all animals whose age is less than or equal to 10.

`http://localhost:3000/search?max_weight=50`
* returns all animals whose weight is less than or equal to 50.

`http://localhost:3000/search?breed=spaniel&max_weight=50&max_age=10`
* returns all animals whose breed includes the word spaniel, whose weight and age are at most 50 and 10 respectively.

## Known Bugs

* none

## License

[MIT](https://en.wikipedia.org/wiki/MIT_License)

## Contact Information

Andrew Giang | giang184@gmail.com