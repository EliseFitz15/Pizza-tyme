class Pizza < ActiveRecord::Base
  has_many :slices
  has_many :users through: :slices
  belongs_to :user

  validates :type, presence: true
  validates :description, presence: true
  validates :slice_count, presence: true
end
