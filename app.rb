require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  	params[:name].reverse
  end

  get '/square/:number' do
  	@num = params[:number].to_i

  	(@num * @num).to_s
  end

  get '/say/:number/:phrase' do
  	out = ""
  	params[:number].to_i.times do
  		out += params[:phrase]
  	end
  	out
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/add/:num1/:num2' do
  	(params[:num1].to_i + params[:num2].to_i).to_s
  end

  get '/subtract/:num1/:num2' do
  	(params[:num2].to_i - params[:num1].to_i).to_s
  end

  get '/multiply/:num1/:num2' do
  	(params[:num1].to_i * params[:num2].to_i).to_s
  end

  get '/divide/:num1/:num2' do
  	(params[:num1].to_i / params[:num2].to_i).to_s
  end
end