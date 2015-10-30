class HomeController < ApplicationController

  def index
  	#puts "HELLLOOOOOO WORLD"
  	#puts current_trainer
  	#puts "asdfasdfasdf"
    trainerless_pokemon = Pokemon.where(trainer:nil)
    @pokemon = trainerless_pokemon.sample
  end

end
