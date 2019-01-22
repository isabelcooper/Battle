require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :form
  end

  post '/names' do
    @player_name = params[:Name]
    erb :plays
  end
end
