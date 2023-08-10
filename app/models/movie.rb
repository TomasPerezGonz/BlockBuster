class Movie < ApplicationRecord
  has_many :rentals
  has_many :customers, through: :rentals

  def current_customer
    rentals.where(returned: false).last&.customer
  end
end

