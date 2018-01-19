require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect to '/play'
  end

  get '/play' do
    erb :play
  end

  get '/confirmation' do
    $game.attack
    erb :confirmation
  end

  get '/next_turn' do
    $game.switch_turn
    redirect to '/play'
  end

  run! if app_file == $0
end
