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

	def damage
		puts params
		@pokemon = Pokemon.where(id:params[:id])[0]
		puts @pokemon
		@pokemon.health -= 10
		@pokemon.save
		if @pokemon.health <= 0 
			@pokemon.destroy
		end 
		redirect_to :back
	end

	def new 
		@pokemon = Pokemon.new
	end

end
