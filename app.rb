require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
  erb :index
  end

  run! if app_file == $0

  post '/names' do
    player_1 = params[:player_1]
    player_2 = params[:player_2]
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    @game = $game
    @game.attack
    erb :attack
  end
end
