class BookingsController < ApplicationController
  
  def index
    bookings = Booking.all
    render json: bookings
  end

  def show
  end
  
  def create
  end

end
