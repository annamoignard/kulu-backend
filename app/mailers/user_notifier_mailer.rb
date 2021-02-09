# frozen_string_literal: true

class UserNotifierMailer < ApplicationMailer
  default from: 'amoignard.coder@gmail.com'

  #  sends an email when a user signs up 
  def send_signup_email(user)
    @user = user
    mail(to: @user.email, subject: 'Thanks for signing up!')
  end
end
