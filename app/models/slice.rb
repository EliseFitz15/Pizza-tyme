class Slices < ActiveRecord::Base
  belongs_to :user
  belongs_to :pizza
  
  validates :user_id, null: false
  validates :pizza_id, null: false
end
