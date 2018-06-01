#!/usr/bin/ruby

require "sinatra/base"
require "sinatra/reloader"
require "sinatra/activerecord"
require "sinatra/json"

class Partners < ActiveRecord::Base
end

module MyApp
  class App < Sinatra::Base

    enable :sessions

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

end
