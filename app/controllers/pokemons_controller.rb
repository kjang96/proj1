class PokemonsController < ApplicationController

	def create
		@poke = params[:pokemon]
		puts @poke[:name]
		@pokemon = Pokemon.create name: @poke[:name], trainer: current_trainer, health: 100
		current_trainer.pokemons << @pokemon
		#@pokemon.save
		redirect_to trainer_path(id: current_trainer)
	end

	def new
		puts params
		@trainer_id = params[:id]
		puts @trainer_id
		puts 'dASDFASDFASDFASDFASDF'
		@pokemon = Pokemon.new
	end

	def show
	end

	def index 
		@pokemons = Pokemon.all
	end

end