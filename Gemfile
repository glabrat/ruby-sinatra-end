# Gemfile

source 'https://rubygems.org'
ruby "2.4.4"

gem "sinatra"
gem "activerecord"
gem "sinatra-activerecord"
gem 'sinatra-flash'
gem 'sinatra-redirect-with-flash'

gem 'thin'
gem 'json'
gem 'rake'
gem 'rack-flash3'
gem 'sinatra-partial'
gem 'sinatra-contrib'
gem 'tilt'

group :devepment do
  gem "sqlite3"
  gem "tux"
end

group :production do
  #apt-get install libpq-dev
  gem "pg"
end
