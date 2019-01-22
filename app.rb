require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect '/plays'
  end

  get '/plays' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    erb :plays
  end

  get '/attack' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    erb :attack
  end
end
