require ('sinatra')
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative './models/game'
also_reload './models/*'

get '/game/:first_hand/:second_hand' do
  game = Game.new(params[:first_hand], params[:second_hand])
  @result = game.game
  erb (:result)
end
get '/' do
  @home = 'Welcome'
  erb (:home)
end
get '/welcome' do
  @welcome = 'Welcome in the game of stone, paper, scissors. The rules are simple:
  A player who decides to play rock will beat another player who has chosen scissors
  ("rock crushes scissors" or sometimes "blunts scissors"), but will lose to one who has played paper ("paper covers rock");
  a play of paper will lose to a play of scissors ("scissors cuts paper").'
  erb (:welcome)
end
