class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_many :hives, foreign_key: :queen_id
  has_many :queen_reservations, through: :hives, source: :reservations # => reservations as an owner
  has_many :reservations # => reservations as an renter
  has_many :notifications, as: :recipient, dependent: :destroy

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
