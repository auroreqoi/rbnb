class Hive < ApplicationRecord
  belongs_to :queen, class_name: 'User'
  has_many :reservations
  has_one_attached :photo

  validates :name, :description, :address, :price_per_day, presence: true
  validates :name, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_address,
    against: [ :name, :description, :address ],
    using: {
      tsearch: { prefix: true }
  }
end
