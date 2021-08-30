# Animal Shelter API by Andrew Giang
This is a one day project to create an animal shelter API. 

## Technology Used
* _Ruby_
* _rails_
* _Docker_
* _PostgresSQL_
* _Postman_
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
* All endpoints can also be rendered on Heroku by replacing `http://localhost:3000` with `https://giang-animal-shelter-api.herokuapp.com`

* ### Retrieving the entire list:
  * In postman, you can send a `GET` request to `http://localhost:3000/animals`
  * This will return a list of all animals in the database.

* ### Retrieving the first 25 elements:
  * In postman, you can send a `GET` request to `http://localhost:3000/animals?page=1`
  * This will return the first 25 elements of the database
  * Currently, you cannot access pagination pass page 1.

* ### Retrieving a random element
  * In postman, you can send a `GET` request to `http://localhost:3000/random`
  * This will return a random animal in the database.

* ### Retrieving multiple random element
  * In postman, you can send a `GET` request to `http://localhost:3000/random?count=4`
  * The example above will return 4 random animals in the database.
  * use the parameter: `count` (integer) to specify how many random elements to. 

* ### Creating a new element
  * In postman, you can send a POST request to: `http://localhost:3000/animals`
  * You will need to fill in all the required parameters: `name` (string), `animal_type` (string), `gender` (string), `age` (integer), `weight` (integer), `color` (string), `breed` (string).

* ### Updating a new element
  * In postman, you can send a PUT request to: `http://localhost:3000/animals/:id`
  * You will need to specify the id number and fill in at least one of the required parameters: `name` (string), `animal_type` (string), `gender` (string), `age` (integer), `weight` (integer), `color` (string), `breed` (string).

* ### Deleting an element
  * In postman, you can send a DELETE request to: `http://localhost:3000/animals/:id`
  * You will need to specify the id number to delete.

* ### Searching for elements
  * In postman, you can send a `GET` request to `http://localhost:3000/search` to search for elements by breed, max age, or max weight
  * use search parameter: `breed` (string), `max_age` (integer), or `max_weight` (integer) to specify the search fields. 
  * For example, 
    * `http://localhost:3000/search?breed=spaniel` will return all animals whose breed includes the word spaniel.
    * `http://localhost:3000/search?max_age=10` will return all animals whose age is less than or   equal to 10.
    * `http://localhost:3000/search?max_weight=50` will return all animals whose weight is less than or equal to 50.
    * `http://localhost:3000/search?breed=spaniel&max_weight=50&max_age=10` will return all animals whose breed includes the word spaniel, whose weight and age are at most 50 and 10 respectively.

## Known Bugs

* pagination only renders page 1.

## License

[MIT](https://en.wikipedia.org/wiki/MIT_License)

## Contact Information

Andrew Giang | giang184@gmail.com