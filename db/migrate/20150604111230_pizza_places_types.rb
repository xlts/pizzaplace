class PizzaPlacesTypes < ActiveRecord::Migration
  def change
  	create_table :pizza_places_types, :id => false do |t| 
  		t.references :pizza_place
  		t.references :pizza_type
  	end
  end
end
