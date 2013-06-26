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
  "your name is #{params[:first]} #{params[:last]}. you are #{params[:age]} years old."
end

get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  "The result is #{result}"
end

get '/divide/:x/:y' do
  result = params[:x].to_f / params[:y].to_f
  "The result is #{result}"
end