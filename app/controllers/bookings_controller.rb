class BookingsController < ApplicationController
  def index
    Bookings = Bookings.all
    render json: bookings
  end

  def show
   
  end
  
  def create

  end

end
