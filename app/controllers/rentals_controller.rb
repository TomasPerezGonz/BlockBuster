class RentalsController < ApplicationController
  before_action :set_movie, only: [:create]
  before_action :set_customer, only: [:create]

  # GET /rentals
  def index
    @rentals = Rental.all
    render json: @rentals
  end

  # POST /customers/:customer_id/rentals or /movies/:movie_id/rentals
  def create
    @rental = Rental.new
    @rental.movie = @movie if @movie
    @rental.customer = @customer if @customer

    if @rental.save
      render json: @rental, status: :created
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rentals/:id
  def update
    @rental = Rental.find(params[:id])
    if @rental.update(rental_params)
      render json: @rental
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id]) if params[:movie_id]
  end

  def set_customer
    @customer = Customer.find(params[:customer_id]) if params[:customer_id]
  end

  def rental_params
    params.require(:rental).permit(:returned)
  end
end
