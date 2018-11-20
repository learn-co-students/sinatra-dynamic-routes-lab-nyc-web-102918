require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    reversed = params[:name].reverse
  end

  get '/square/:number' do
      squared = params[:number].to_i ** 2
     # binding.pry
     squared.to_s
   end

  get '/square/:number' do
      squared = params[:number].to_i ** 2
    # binding.pry
    squared.to_s
  end

  get '/say/:number/:phrase' do
    phrase=params[:phrase]
    num=params[:number].to_i
    string=""
    num.times do string+=phrase
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrase=params.map{|key,phrase|phrase}
    phrase.join(" ")+"."
  end

  get '/:operation/:number1/:number2' do
    operation=params[:operation]
  case operation
  when "add"
      "#{params[:number1].to_f + params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_f - params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_f * params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_f / params[:number2].to_i}"
    end

  end
end
