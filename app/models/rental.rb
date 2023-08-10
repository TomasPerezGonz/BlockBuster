class Rental < ApplicationRecord
  belongs_to :movie
  belongs_to :customer

  validates :movie_id, :customer_id, presence: true
end
