require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    #'Hello Battle!'
    erb :index
  end

  post '/names' do
    # @player_1_name = params[:player_1_name]
    # @player_2_name = params[:player_2_name]
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player1]
    @player_2 = session[:player2]
    erb :play
    end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
