require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/names' do
    @player_one = Player.new(params[:player_one])
    @player_two = Player.new(params[:player_two])
    $game = Game.new(@player_one, @player_two)
    redirect '/plays'
  end

  get '/plays' do
    erb :plays
  end

  get '/attack' do
    $game.attack($game.opponent)
    # $game.switch_turn
    erb :attack
    # redirect '/plays'
  end

  post '/switch_turn' do
    if $game.game_over?
      redirect '/game-over'
    else
      $game.switch_turn
      redirect '/plays'
    end
  end

  get '/game-over' do
    erb :game_over
  end
end
