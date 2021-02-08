class BookingsController < ApplicationController
  before_action :authenticate_user, only: [:index]
  before_action :set_booking, only: [:show, :destroy, :update]
  
  #client sees bookings they have made. Instructors see client bookings. 
    def index
      bookings = current_user.bookings.map do |booking|
        {
          id: booking.id,
          name: booking.session.name,
          time: booking.session.time,
          date: booking.session.date,
          day:  booking.session.day
        }
      end
      render json: {bookings: bookings}
    end
    

  #New booking is created 
    def create
      session = Session.find_by(name: params[:name], time: params[:time], date: params[:date], day: params[:day])
      booking = Booking.new(session_id: session.id)
      booking.user_id = current_user.id
      if booking.save
        # UserConfirmationMailer.send_confirmation_email(current_user).deliver
        render status: :created
      else
        render status: :unprocessable_entry
      end
    end 

  #client can see booking
    def show
      booking = Booking.find(params[:id])
      render json: {
        name: booking.session.name, 
        cost: booking.session.cost,
        day: booking.session.day,
        time: booking.session.time
      } 
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
      params.require(:booking).permit(:date, :time, :name, :session, :cost, :minutes, :day)
    end

  end 