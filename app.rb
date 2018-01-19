require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new
    $game.add(params[:player_1_name], params[:player_2_name])
    redirect to'/play'
  end

  get '/play' do
    # @player_1_name = $game.player1.name
    # @player_2_name = $game.player2.name
    # @player_2_health = $game.player2.health
    erb :play
  end

  get '/confirmation' do
    # @player_2_name = $game.player2.name
    $game.attack($game.player2)
    # @player_2_health = $game.player2.health
    erb :confirmation
  end

  run! if app_file == $0
end
