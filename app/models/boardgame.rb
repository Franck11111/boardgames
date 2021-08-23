class Boardgame < ApplicationRecord
  has_many :bookings

   validates :title, :description, :price_per_day, presence: true
end
