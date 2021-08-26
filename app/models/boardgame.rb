class Boardgame < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo
  belongs_to :user

  validates :title, :description, :price_per_day, presence: true
end
