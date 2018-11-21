require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @repeated_phrase = ""
    @number.times do
      @repeated_phrase << @phrase
    end
    @repeated_phrase.to_s
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
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      @operation = "+"
    elsif @operation == "subtract"
      @operation = "-"
    elsif @operation == "multiply"
      @operation = "*"
    else @operation == "divide"
      @operation = "/"
    end
    "#{eval "#{@number1} #{@operation} #{@number2}"}"
    end
  end
