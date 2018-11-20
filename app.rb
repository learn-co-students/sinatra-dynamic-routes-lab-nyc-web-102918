require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    product = num * num
    product.to_s
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    output = ""
    number.times do
      output << params[:phrase]
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] + '.'
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      output = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == 'subtract'
      output = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == 'multiply'
      output = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == 'divide'
      output = params[:number1].to_i / params[:number2].to_i
    end
    output.to_s
  end

end
