# frozen_string_literal: true

class SessionsController < ApplicationController
  before_action :set_session, only: %i[show destroy update]

  # clinets and instructors can see all available sessions. this is mapping through our data, mostly so i can get the instructor name which comes from the booking model
  def index
    sessions = Session.all
    session_data = sessions.map do |session|
      {
        id: session.id,
        name: session.name,
        date: session.date,
        minutes: session.minutes,
        cost: session.cost,
        instructor_name: session.instructor.name,
        time: session.time,
        day: session.day
      }
    end
    render json: { sessions: session_data, instructor: current_user.try(:instructor) }
  end


  def show
    render json: @session
  end

  # this allows instructors to create sessions to add the schedule 
  def create
    session = Session.new(session_params)
    instructor = Instructor.find_by_name(params[:session][:instructor_name])
    session.instructor_id = instructor.id
    if session.save
      render status: :created
    else
      render status: :bad_request
    end
  end

  def update
    if @session.update(session_params)
      instructor = Instructor.find_by_name(params[:session][:instructor_name])
      @session.instructor_id = instructor.id
      if @session.save
        render status: :created
      else
        render status: :bad_request
      end
    else
      render status: :bad_request
    end
  end

  def destroy
    @session.destroy
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:date, :time, :name, :minutes, :cost, :day)
  end
end
