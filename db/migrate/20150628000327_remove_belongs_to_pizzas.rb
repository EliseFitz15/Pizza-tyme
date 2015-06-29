class RemoveBelongsToPizzas < ActiveRecord::Migration
  def change
    remove_belongs_to :pizzas, :user, null: false
  end
end
