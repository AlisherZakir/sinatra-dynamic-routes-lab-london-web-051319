require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase] }" * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ") << "."
  end

  get '/:operation/:number1/:number2' do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    n = 0
    case params[:operation]
    when "add"
      n = n1 + n2
    when "subtract"
      n = n1 - n2
    when "multiply"
      n = n1 * n2
    when "divide"
      n = n1 / n2
    end
      n.to_s
  end
end
