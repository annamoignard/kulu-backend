class UserNotifierMailer < ApplicationMailer
  default :from => 'amoignard.coder@gmail.com'

  def send_signup_email(user)
    @user = user
    mail( :to => @user.email, :subject => 'Thanks for signing up!')
  end

  def send_confirmation_email(user)
    @user = user
    mail( :to => @user.email, :subject => "Can't wait to see you in class")
  end
end