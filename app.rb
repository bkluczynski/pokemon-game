require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/attack' do
    @game = Game.instance
    @game.attack(@game.non_current_turn)
    # @game.switch_player
    # @game.attack(@game.current_turn)
    erb :attack
  end

  get '/switch_player' do
    @game = Game.instance
    @game.switch_player
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
