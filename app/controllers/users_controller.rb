class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save 
      render status: :created
    else
      render status: :bad_request
    end
  end

  private 

  def user_params 
    params.permit(:user).permit(:username, :email, :password)
  end 
end