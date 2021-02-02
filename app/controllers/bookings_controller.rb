class BookingsController < ApplicationController
    before_action :set_session, only: [:show, :destroy]
  
    #client sees bookings they have made. Instructors see client bookings. 
    def index
      bookings = Booking.all
      render json: {bookings: bookings, client: current_user.try(:client)}
    end
  #client can see booking
    def show
      render json: @booking
    end 
  
    def create
    end 
  
    def update 
    end 
  #client can drop/cancel a booking
    def destroy
      @booking.destroy
    end 
  
    private 
  
    def set_booking
      @booking = Booking.find(params[:id])
    end
  
    def booking_params
      params.require(:booking).permit(:date, :time, :name, :session, :cost)
    end 
  
    
  end
  
  def create
  end

end
