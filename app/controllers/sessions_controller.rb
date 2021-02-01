class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :destroy, :update]

  def index
    sessions = Session.all
    render json: {sessions: sessions, instructor: current_user.try(:instructor)}
  end

  def show
    render json:  @session 
  end 

  def create
    session = Session.new(sessios_params)
    session.user_id = current_user.id
    if session.save
      render status: :created 
    else
      render status: :bad_request
    end
  end 

  def update 
    if @session.update(sessions_params)
      render status: :no_content
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
    params.require(:session).permit(:data, :time, :name, :minutes, :cost)
  end 

  
end
