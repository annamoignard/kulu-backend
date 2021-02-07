class UsersController < ApplicationController


  def create
    @user = User.create(user_params)
    if @user.save 
      auth_token = Knock::AuthToken.new payload: {sub: @user.id}
      render json: {username: @user.username, jwt: auth_token.token}, status: :created
      UserNotifierMailer.send_signup_email(@user).deliver
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def sign_in 
    @user = User.find_by_email(params[:auth][:email])
    if @user && @user.authenticate(params[:auth][:password])
      auth_token = Knock::AuthToken.new payload: {sub: @user.id}
      render json: {username: @user.username, jwt: auth_token.token, instructor: !!@user.instructor}, status: 200
    else
        render json: {error: "Incorrect Username or Password"}, status: 404 

    end 
end 

  private 

  def user_params 
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end 

end 