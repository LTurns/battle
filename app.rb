require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
  erb :index
  end

  run! if app_file == $0

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  post '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_2.reduce_points
    erb :attack
  end
end
