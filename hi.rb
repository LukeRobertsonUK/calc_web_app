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

get '/name/:first/:last/:age' do
  binding.pry
  "your name is #{params[:first]} #{params[:last]}. you are #{params[:age]} years old."
end