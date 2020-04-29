require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get "/" do
    "Testing infrastructure working!"
  end

  run! if app_file == $0

  get '/form' do
  erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
    # "Hitpoints: 5"
  end

  get "/points" do
    "Hitpoints: 5"
  end

end
