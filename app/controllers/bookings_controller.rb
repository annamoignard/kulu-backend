class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]
  
    #client sees bookings they have made. Instructors see client bookings. 
    def index
      bookings = Booking.all
      render json: {bookings: bookings, client: current_user.try(:client)}
    end

    
  #New booking is created 
    def create
      @booking = Booking.create(booking_params)
      booking.user_id = current_user.id
      if booking.save
        render status: :created
      else
        render status: :unprocessable_entry
      end
    end 

    #client can see booking
    def show
      render json: @booking
    end 
   
    #client does not update
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
      params.require(:booking).permit(:date, :time, :name, :session, :cost, :minutes)
    end

end
