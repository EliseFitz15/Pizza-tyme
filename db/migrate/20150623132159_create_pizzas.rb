class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :type, null: false
      t.string :description, null: false
      t.integer :slice_count, null: false
      t.integer :location
      t.money :price

      t.timestamps null: false
    end
  end
end
