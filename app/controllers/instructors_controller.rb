class InstructorsController < ApplicationController
  before_action :authenticate_user 
  before_action :authorize_user

  #  should this logic be in the sessions controller, or the instructor controller and then i just give access only to instrucotrs?
  

  def index
    #  redirect to schedule react component 
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
    unless user.instructor 
      render status: :unauthorized
    end 
  end  

end
