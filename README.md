## Description

This is a basic scaffolded Rails API using Docker with Ruby 2.6.5, Rails 5.2.4, and Postgres 12.1. This project can be used in lieu of installing Ruby, Rails and Postgres on your machine when you are working with Rails APIs during week 6 of Epicodus. When you run `docker-compose up`, Docker will create two containers on your machine: a Ruby/Rails environment running the local server and a Postgres container where your database is stored.

### Windows Users

You will need to uncomment the following line in `Dockerfile` for the `entrypoint.sh` script to run correctly:

```
RUN sed -i -e 's/\r$//' /usr/bin/entrypoint.sh
```

This line switches the line ending format so it works correctly with Windows. (Note that if the line above is uncommented, the script won't run correctly with Mac machines.)

### Running Rails and Postgres Servers

The included code has a single API endpoint at: `http://localhost:3000/quotes`. Once you create and migrate the database, you'll be able to access it.

* First run `docker-compose up` to build the project. Next, you'll need to add a database.

### Running Shell Commands

To access a shell environment to run `rails c`, run migrations, or run other `rake` and `rails` tasks such as `rails routes`, you'll need to do the following.

Run the following command in the root directory of the project:

```
$ docker-compose run api sh
```

It's not necessary for the containers to be running (with `$ docker-compose up`). Note that the service name has been changed from `web` to `api`.

This will open a shell where you can run any commands in the web application's environment. This includes the following commands:

* `$ bundle exec rake db:create` (and any other Rake commands)
* `$ rails routes` and `$ rails c` (as well as any other Rails commands)
* `$ bundle exec rspec` (to run tests)
* `$ irb` (if you just need a basic Ruby REPL)

Once you create and migrate the database, you can go to `http://localhost:3000/quotes` in Postman or the browser to see the API's response.

### What if I want to add more gems to my project?

You'll need to complete the following steps:

* First, add the gems to the project.

* Run `docker-compose run web bundle install`. This will bundle the new gems.

* Next, run `docker-compose up --build`. This will rebuild the project.

To read Docker's documentation on running projects using Ruby and Rails, see [Quickstart: Compose and Rails](https://docs.docker.com/compose/rails/).
