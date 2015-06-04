class CreatePizzaTypes < ActiveRecord::Migration
  def change
    create_table :pizza_types do |t|
      t.string :name
      t.float :price
      t.text :ingredients

      t.timestamps null: false
    end
  end
end
