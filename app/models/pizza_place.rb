class PizzaPlace < ActiveRecord::Base
	has_and_belongs_to_many :pizza_types, join_table: :pizza_places_types

	validates :name, presence: true, uniqueness: true
	validates :address, presence: true
	validates_time :open_from
	validates_time :open_until, :after => :open_from
end
