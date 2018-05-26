# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/json'
require "sinatra/reloader" if development?
require './config/environments'


class Partners < ActiveRecord::Base
end

get "/" do
  @partners = Partners.order("created_at DESC")
  @title = "Hi."
  erb :"partners/index"
  #json @partners
end

helpers do
  def title
    if @title
      "#{@title}"
    else
      "Welcome."
    end
  end
end
