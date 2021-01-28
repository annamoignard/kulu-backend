class InstructorsController < ApplicationController
  before_action :authenticate_user 
  before_action :authorize_user

  def index
  end

  
  def create
  end 

  def update 
  end 

  def destroy
  end 

  private 

  def authorize_user
    unless user.instructor 
      render status: :unauthorized
    end 
  end  

end
