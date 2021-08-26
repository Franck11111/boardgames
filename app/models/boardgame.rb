class Boardgame < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :user
  geocoded_by :address

  validates :title, :description, :price_per_day, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
