class Review < ApplicationRecord
  belongs_to :hive
  belongs_to :user
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 1..5 }
  validates :content, length: { maximum: 200 }
end
