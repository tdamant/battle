require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  disable :show_exceptions
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

get '/play' do
  @game = $game
  erb :play
end

get '/attack' do
  @game = $game
  @game.attack(@game.not_turn)
  if @game.game_over
    erb :lost
  else
    @game.switch_turn
    redirect '/play'
  end
end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
