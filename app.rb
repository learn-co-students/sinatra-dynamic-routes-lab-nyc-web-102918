require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @username = params[:name].reverse
    "#{@username}"
  end

  get '/square/:number' do
    @value = params[:number].to_i * params[:number].to_i
    @value.to_s
  end

  get '/say/:number/:phrase' do
    string = ""
    (params[:number].to_i).times do
      string += params[:phrase].to_s
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
     operation = params[:operation]
     number1 = params[:number1].to_i
     number2 = params[:number2].to_i

     if operation == "add"
       value = number1 + number2
     elsif operation == "subtract"
       value = number1 - number2
     elsif operation == "multiply"
       value = number1 * number2
     elsif operation == "divide"
       value = number1 / number2
     else
       value = "wrong"
     end
     value.to_s
   end



end
