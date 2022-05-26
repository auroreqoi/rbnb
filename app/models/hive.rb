class Hive < ApplicationRecord
  belongs_to :queen, class_name: 'User'
  has_many :reservations
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  validates :name, :description, length: { maximum: 1000 }, :address, :price_per_day, presence: true
  validates :name, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
