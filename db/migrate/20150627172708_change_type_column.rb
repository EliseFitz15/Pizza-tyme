class ChangeTypeColumn < ActiveRecord::Migration
  def up
    remove_column :pizzas, :type, :string, null: false
    add_column :pizzas, :name, :string, null: false
  end
  def down
    remove_column :pizzas, :name, :string, null: false
    add_column :pizzas, :type, :string, null: false
  end
end
