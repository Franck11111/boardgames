class Boardgame < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

   validates :title, :description, :price_per_day, presence: true
end
