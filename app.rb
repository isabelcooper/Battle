require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect '/plays'
  end

  get '/plays' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb :plays
  end
end
