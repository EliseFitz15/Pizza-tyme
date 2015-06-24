class AddBelongsTo < ActiveRecord::Migration
  def up
    add_belongs_to :pizzas, :user, null: false
  end
  def down
    remove_belongs_to :pizzas, :user, null: false
  end
end
