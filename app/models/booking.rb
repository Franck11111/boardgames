class Booking < ApplicationRecord
  belongs_to :boardgame, :user
  has_many :reviews

  validates :start_date, :end_date, presence: true
end
