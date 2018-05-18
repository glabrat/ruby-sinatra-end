# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'


class Partners < ActiveRecord::Base
end
