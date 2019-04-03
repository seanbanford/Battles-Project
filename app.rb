require 'sinatra/base'

class Battle < Sinatra::Base

  get '/battle' do
    'Hello Battle!'
  end

  get '/' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb (:index)
  end

  get '/names' do
    erb :play
  end
end
