require 'pry'
require 'sinatra'
require 'sinatra/contrib/all'


get '/' do
  erb :home
end


get '/basic_calc' do
  @first = params[:first].to_f
  @second = params[:second].to_f
  @operator = params[:operator]

  @result = case @operator
    when '+' then @first + @second
    when '-' then @first - @second
    when '*' then @first * @second
    when '/' then @first / @second
  end
  erb :basic_calc
end


get '/bmi' do
  if params[:height]
    @weight = params[:weight].to_f
    @height = params[:height].to_f
    @weight_unit =  params[:weight_unit]
    @height_unit = params[:height_unit]

    adjusted_weight = case @weight_unit
      when "kg" then @weight
      when "pounds" then @weight/2.2
    end

    adjusted_height = case @height_unit
      when "cm" then @height
      when "inches" then @height*2.54
    end

    @result = adjusted_weight/((adjusted_height/100)**2)

  end
  erb :bmi
end


get '/mortgage' do
  if params[:principal]
    @principal = params[:principal].to_f
    @interest = params[:interest].to_f
    @number = params[:number].to_f

    p = @principal
    i = @interest / 1200
    n = @number

    @result =  p*((i*((1+i)**n)) / (((1+i)**n)-1))
  end
    erb :mortgage
end


get '/journey_cost' do
  if params[:distance]
    @distance = params[:distance].to_f
    @economy = params[:economy].to_f
    @speed = params[:speed].to_f
    @price = params[:price].to_f

    if @speed <= 60
      adj_economy = @economy
    else
      adj_economy = @economy - (2 * (@speed - 60))
    end

    @time = @distance/@speed
    @cost = @price * (@distance / adj_economy).round(2)
  end
erb :journey_cost
end
