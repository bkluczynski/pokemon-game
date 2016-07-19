require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1, @player_2 = param[:player_1], param[:player_2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end