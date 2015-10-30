class PokemonController < ApplicationController

	def capture
		@pokemon = Pokemon.where(id:params[:id])[0]
		#puts params
		# puts 'EHLLOOO WORLD'
		# puts @pokemon
		# @pokemon.each do |poke| 
		# 	puts poke.name
		# 	puts poke.id
		# end
		@pokemon.trainer = current_trainer
		current_trainer.pokemons << @pokemon
		# pokemons.push

		# @pokemons = Pokemon.where(trainer:current_trainer)
		puts current_trainer.pokemons.length
		# puts @pokemons
		# puts "bbbbbbbbbbbbbbbbbbbbbbbbbb"
		redirect_to :root
	end

end
