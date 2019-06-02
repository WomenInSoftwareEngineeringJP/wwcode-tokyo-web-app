# URL Shortener

Just a simple URL shortener app to transform long URLs into something like `wwcode.jp/[something]`.
You can access the deployed version here: https://wwcode.jp/urls

# How to contribute

### Setup your environment

- Make sure you have ruby 2.5.3 installed on your system
  - [Installing ruby](https://www.ruby-lang.org/en/documentation/installation/)

- Make sure you have PostgreSQL version 9.1 or newer
  - [PostgreSQL Download](https://www.postgresql.org/download/)

- Clone and cd into the repo folder
  $ git clone git@github.com:WWCodeTokyo/wwcode-tokyo-web-app.git
  $ cd wwcode-tokyo-web-app

- Install the dependencies
  $ bundle install

- Configure your database
  - Make a copy of `config/database.yml.sample` and rename the copy to `config/database.yml` (without `.sample` at the end)
  - Run the rake below to create and populate your database
  $ bundle exec rake db:create db:migrate db:seed

- Run the server and access it on localhost:3000 on your browser
  $ bundle exec rails s

### Running tests

WIP

### Deploying the app

You can find the CI workflow on `.circleci` folder. It's currently setup to deploy to the server when a PR is merged to `master` branch.
