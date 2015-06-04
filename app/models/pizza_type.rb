class PizzaType < ActiveRecord::Base
	has_and_belongs_to_many :pizza_places, join_table: :pizza_places_types

	validates :name, presence: true
	validates :price, presence: true, :numericality => { :greater_than => 0 }
	validates :ingredients, presence: true
end
