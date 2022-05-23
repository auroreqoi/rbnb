class Hive < ApplicationRecord
  belongs_to :queen, class_name: 'User'
  has_many :reservations

  validates :name, :description, :address, :price_per_day, presence: true
  validates :name, uniqueness: true
end
