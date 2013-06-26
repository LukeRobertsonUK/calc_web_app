require 'pry'
require 'sinatra'
require 'sinatra/contrib/all'


get '/hi' do
  "Hello, WDI"
end

get '/' do
  "This is the homepage"
end

get '/name/:first' do
  "Hello, #{params[:first]}"
end