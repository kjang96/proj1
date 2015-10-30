class PokemonController < ApplicationController

	def capture
		@pokemon = Pokemon.where(id:params[:id])[0]
		# puts 'ddddddddd'
		# puts @pokemon
		#@pokemon.trainer_id = current_trainer.id #gives the wild pokemon a user 
		#@pokemon.trainer = current_trainer
		current_trainer.pokemons << @pokemon
		puts current_trainer.pokemons.length
		redirect_to :root
	end

end
