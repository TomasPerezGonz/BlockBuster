class Rental < ApplicationRecord
  belongs_to :movie
  belongs_to :customer

  validate :movie_not_already_rented, on: :create

  private

  def movie_not_already_rented
    if Rental.where(movie_id: self.movie_id, returned: false).exists?
      errors.add(:movie, "is already rented")
    end
  end
end
