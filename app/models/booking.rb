class Booking < ApplicationRecord
  belongs_to :boardgame
  belongs_to :user
  has_many :reviews

  validates :start_date, :end_date, presence: true
end
