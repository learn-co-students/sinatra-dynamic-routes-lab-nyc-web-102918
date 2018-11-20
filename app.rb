require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @square = ((params[:number].to_i) ** 2)
      "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = (params[:number].to_i)
    @phrase = params[:phrase]
    @string = ""
        @number.times do
          @string << @phrase
        end
        "#{@string}"
    end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @addition = @number1 + @number2
    @subtraction = @number2 - @number1
    @multiplication = @number1 * @number2
    @division = @number1/@number2
    "#{@addition} #{@subtraction} #{@multiplication} #{@division}"
  end

end


# get '/multiply/:num1/:num2' do
#       @num1 = params[:num1].to_i
#       @num2 = params[:num2].to_i
#       @product = @num1 * @num2
#       "#{@product}"
#   end
