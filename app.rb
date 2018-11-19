require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @string = ""
    @number.times do
      @string << @phrase
    end
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1] + " "
    @word2 = params[:word2] + " "
    @word3 = params[:word3] + " "
    @word4 = params[:word4] + " "
    @word5 = params[:word5]
    @phrase = @word1 + @word2 + @word3 + @word4 + @word5
    "#{@phrase}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      @operation = "+"
    elsif @operation == "subtract"
      @operation = "-"
    elsif @operation == "multiply"
      @operation = "*"
    elsif @operation == "divide"
      @operation = "/"
    end
    @expression = "#{@number1} #{@operation} #{@number2}"
    "#{eval @expression}"
  end

end
