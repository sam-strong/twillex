This his how we set up this repo

rails new twillex -T --database=postgresql
cd twillex

Added this to the gemfile

group :development, :test do
  gem 'debugger'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'terminal-notifier-guard'
  gem 'shoulda-matchers'
end

bundle

Set up database.yml (development and test)
Start postgres

rake db:create
rails g rspec:install

Add to gemfile

gem "twitter-bootstrap-rails"


Run generator

bundle
rails generate bootstrap:install static

rails g bootstrap:layout application fixed


## Git flow

* Clone this repository
* `git checkout -b develop origin/develop`
* `git checkout -b feature_name`
