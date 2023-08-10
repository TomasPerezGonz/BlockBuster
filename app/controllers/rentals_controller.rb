class RentalsController < ApplicationController
    def create
      @rental = Rental.new(rental_params)
  
      if @rental.save
        redirect_to movie_path(@rental.movie), notice: "Movie was successfully rented."
      else
        redirect_to movies_path, alert: "There was an error renting the movie."
      end
    end
  
    private
    def rental_params
      params.require(:rental).permit(:movie_id, :customer_id)
    end
  end