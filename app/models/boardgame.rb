class Boardgame < ApplicationRecord

   validates :title, :description, :price_per_day, presence: true
end
