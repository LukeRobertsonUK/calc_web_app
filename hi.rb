require 'pry'
require 'sinatra'
require 'sinatra/contrib/all'


# get '/hi' do
#   "Hello, WDI"
# end

# get '/' do
#   "This is the homepage"
# end

# get '/name/:first' do
#   "Hello, #{params[:first]}"
# end

# get '/name/:first/:last/:age' do
#  erb :name
# end

# get '/multiply/:x/:y' do
#   @result = params[:x].to_f * params[:y].to_f
#   erb :calc
# end

# get '/divide/:x/:y' do
#   @result = params[:x].to_f / params[:y].to_f
#   erb :calc
# end

get '/calc' do
  @first = params[:first].to_f
  @second = params[:second].to_f
  @operator = params[:operator]

  @result = case @operator
    when '+' then @first + @second
    when '-' then @first - @second
    when '*' then @first * @second
    when '/' then @first / @second
  end
  erb :calc
end