require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name  = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    return_phrase = ""
    (params[:number].to_i).times do
      return_phrase += params[:phrase]
    end
    return_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    return_phrase = ""
    return_phrase += params[:word1]
    return_phrase += (" " + params[:word2])
    return_phrase += (" " + params[:word3])
    return_phrase += (" " + params[:word4])
    return_phrase += (" " + params[:word5] + ".")
    return_phrase
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end

end
