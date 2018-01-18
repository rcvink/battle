require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
   session[:player_1_name] = params[:player_1_name]
   session[:player_2_name] = params[:player_2_name]
   redirect to'/play'
  end

  get '/play' do
    @player_health = 100
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  get '/confirmation' do
    erb :confirmation
  end

  run! if app_file == $0
end
