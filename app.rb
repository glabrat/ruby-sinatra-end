# app.rb

require "sinatra/base"
require "sinatra/reloader"
require 'sinatra/activerecord'
require "sinatra/json"
require './config/environments'


class Partners < ActiveRecord::Base
end

class MyApp < Sinatra::Base

  enable :sessions

  set :bind, '0.0.0.0'

  configure :development do
   register Sinatra::Reloader
 end


  get "/" do
    @partners = Partners.order("created_at DESC")
    @title = "Hi."
    erb :"partners/index"
  end

  run! if app_file == $0
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
