class PizzaTypesController < ApplicationController

	def index
		@pizza_types = PizzaType.all
	end

	def new
		@pizza_type = PizzaType.new
	end

	def create
		@pizza_type = PizzaType.new(pizza_type_params)
		if @pizza_type.save
			redirect_to @pizza_type
		else
			render :new
		end	
	end

	def show
		@pizza_type = PizzaType.find(params[:id])
	end

	def edit
		@pizza_type = PizzaType.find(params[:id])
	end

	def update
		if @pizza_type.update(pizza_type_params)
			redirect_to pizza_types_path
		else
			render :edit
		end
	end

	def destroy
		@pizza_type = PizzaType.find(params[:id])
		@pizza_type.destroy

		redirect_to pizza_types_path
	end

	private
	def pizza_type_params
		params.require(:pizza_type).permit(:name, :price, :ingredients, :pizza_place_ids => [])
	end
end
