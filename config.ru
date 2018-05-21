# config.ru

#require './app'
#run Sinatra::Application

#using modular approach

require 'rubygems'
require File.join(File.dirname(__FILE__), 'app.rb')
run MyApp
