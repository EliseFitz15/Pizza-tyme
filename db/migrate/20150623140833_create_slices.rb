class CreateSlices < ActiveRecord::Migration
  def change
    create_table :slices do |t|
      t.belongs_to :user, null: false
      t.belongs_to :pizza, null: false

      t.timestamps null: false
    end
  end
end
