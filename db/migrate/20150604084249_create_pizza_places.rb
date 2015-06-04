class CreatePizzaPlaces < ActiveRecord::Migration
  def change
    create_table :pizza_places do |t|
      t.string :name
      t.text :address
      t.time :open_from
      t.time :open_until

      t.timestamps null: false
    end
  end
end
