require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  # get '/' do
  #   'Testing infrastucture working!'
  # end

  run! if app_file == $0

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
    # "Hitpoints: 5"
  end

  get '/attack' do
    @player_1  = $player_1
    @player_2  = $player_2
    @player_1.attack(@player_2)
   erb :attack
  end


end
