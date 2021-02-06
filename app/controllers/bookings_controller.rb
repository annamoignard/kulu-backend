class BookingsController < ApplicationController
  before_action :authenticate_user, only: [:index]
  before_action :set_booking, only: [:show, :destroy, :update]
  
  #client sees bookings they have made. Instructors see client bookings. 
    def index
      # bookings = Booking.all
      booking_data = current_user.bookings.map do |booking|
        {
          name: booking.session.name,
          time: booking.session.time,
          date: booking.session.date
        }
      end
      render json: {bookings: booking_data}
    end

  #New booking is created 
    def create
      session = Session.find_by(name: params[:name], time: params[:time], date: params[:date])
      booking = Booking.new(session_id: session.id)
      booking.user_id = current_user.id
      if booking.save
        render status: :created
      else
        render status: :unprocessable_entry
      end
    end 

  #client can see booking
    def show
      booking = Booking.find(booking_params[:id])
      render json: @booking
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
      params.require(:booking).permit(:date, :time, :name, :session, :cost, :minutes, :client_name)
    end
end
