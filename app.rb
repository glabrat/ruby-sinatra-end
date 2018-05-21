# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'


class Partners < ActiveRecord::Base
end

get "/" do
  @partners = Partners.order("created_at DESC")
  @title = "Hi."
  erb :"partners/index"
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
