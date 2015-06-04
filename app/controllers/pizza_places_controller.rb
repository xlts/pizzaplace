class PizzaPlacesController < ApplicationController

	def index
		@pizza_places = PizzaPlace.all	
	end

	def new
		@pizza_place = PizzaPlace.new
	end

	def create
		@pizza_place = PizzaPlace.new(pizza_place_params)
		@pizza_place.save

		redirect_to @pizza_place
	end

	def show
		@pizza_place = PizzaPlace.find(params[:id])
	end

	def edit
		@pizza_place = PizzaPlace.find(params[:id])
		@pizza_place.open_from = @pizza_place.open_from.strftime("%H:%M")
		@pizza_place.open_until = @pizza_place.open_until.strftime("%H:%M")
	end

	def update 
		@pizza_place.update(pizza_place_params)

		redirect_to pizza_places_path
	end

	def destroy
		@pizza_place = PizzaPlace.find(params[:id])
		@pizza_place.destroy

		redirect_to pizza_places_path
	end

	private
	def pizza_place_params
		params.require(:pizza_place).permit(:name, :address, :open_from, :open_until, :pizza_type_ids => [])
	end


end
