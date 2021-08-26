class Boardgame < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_many_attached :photos
  belongs_to :user

  validates :title, :description, :price_per_day, presence: true
end
