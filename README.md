# DiversityInTech

Phoenix application to rate tech companies according to how diverse friendly they are. Inspired in [techleaks.org](https://www.techleaks.org/).

**Work in progress**

## Setup development environment with Docker

This project is Docker friendly from day one. To start working on it:

* Setup the diversity_in_tech container with `docker-compose build diversity_in_tech`
* Install dependencies with `docker-compose run diversity_in_tech mix deps.get`
* Create your database with `docker-compose run diversity_in_tech mix ecto.create`
* Migrate your database with `docker-compose run diversity_in_tech mix ecto.migrate`
* Install Node.js dependencies with `docker-compose run diversity_in_tech bash -c "cd assets; npm install"`
* Start the application with `docker-compose up`

## Setup testing environment with Docker

This step assumes you already followed instructions from previous paragraph.

* Create your testing database with `docker-compose run diversity_in_tech env MIX_ENV=test mix ecto.create`
* Migrate your testing database with `docker-compose run diversity_in_tech env MIX_ENV=test mix ecto.migrate`
* Run the test suite with `mix test`
* Run the test suite with coverage report on `cover` folder with: `docker-compose run diversity_in_tech env MIX_ENV=test mix coveralls.html`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

**DiversityInTech** is released under the [MIT License](http://www.opensource.org/licenses/MIT).
