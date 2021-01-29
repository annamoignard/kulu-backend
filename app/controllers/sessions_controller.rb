class SessionsController < ApplicationController
  before_action :authorize_user, only: [:create, :destroy]

  #  should this logic be in the sessions controller, or the instructor controller and then i just give access only to instrucotrs?
  

  def index
    sessions = Session.all
    render json: sessions
  end

  
  def create
    @session = Session.create(session_params)
    if @session.save 
      #  good
    else
      #  bad
    end
  end 

  def update 
  end 

  def destroy
  end 

  private 

  def session_params
    params.require(:session).permit(:data, :time, :name, :minutes)
  end 

  def authorize_user
    unless current_user.instructor 
      render status: :unauthorized
    end 
  end  
  
end
