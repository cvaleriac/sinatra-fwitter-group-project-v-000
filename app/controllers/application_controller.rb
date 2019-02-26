require './config/environment'
require 'sinatra/base'
require 'rack-flash'


class ApplicationController < Sinatra::Base
  enable :sessions
  use Rack::Flash

  get '/' do
    erb :index
  end

end
