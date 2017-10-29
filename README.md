# DiversityInTech

[![CircleCI](https://circleci.com/gh/folkswhocode/diversity-in-tech.svg?style=shield)](https://circleci.com/gh/folkswhocode/diversity-in-tech)
[![Ebert](https://ebertapp.io/github/folkswhocode/diversity-in-tech.svg)](https://ebertapp.io/github/folkswhocode/diversity-in-tech)

Phoenix application to rate tech companies according to how diverse friendly they are. Inspired by [techleaks.org](https://www.techleaks.org/).

## Setup development environment with Docker

This project is Docker friendly from day one. To start working on it:

* Setup the diversity_in_tech container with `docker-compose build diversity_in_tech`
* Install dependencies with `docker-compose run diversity_in_tech mix deps.get`
* Create your database with `docker-compose run diversity_in_tech mix ecto.create`
* Migrate your database with `docker-compose run diversity_in_tech mix ecto.migrate`
* Install Node.js dependencies with `docker-compose run diversity_in_tech sh -c "cd assets; npm install"`
* Start the application with `docker-compose up`

## Setup testing environment with Docker

This step assumes you already followed instructions from previous paragraph.

* Create your testing database with `docker-compose exec diversity_in_tech env MIX_ENV=test mix ecto.create`
* Migrate your testing database with `docker-compose exec diversity_in_tech env MIX_ENV=test mix ecto.migrate`
* Run the test suite with: `docker-compose exec diversity_in_tech env MIX_ENV=test mix test`

## Contributing

Please see [CONTRIBUTING](https://github.com/folkswhocode/base/blob/master/en/CONTRIBUTING.md) for more details. Here you have the alphabetical [list of contributors](.github/CONTRIBUTORS.md) of this repository.

----------------------------

This project is part of the [folkswhocode](https://github.com/folkswhocode) organization.
This means that it adheres to its [core values](https://github.com/folkswhocode/base/blob/master/en/VALUES.md), [code of conduct](https://github.com/folkswhocode/base/blob/master/en/CODE_OF_CONDUCT.md) and
[contributing guidelines](https://github.com/folkswhocode/base/blob/master/en/CONTRIBUTING.md), and uses an equivalent [license](https://github.com/folkswhocode/base/blob/master/en/LICENSE).
