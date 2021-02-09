# frozen_string_literal: true

class UserConfirmationMailer < ApplicationMailer
  default from: 'amoignard.coder@gmail.com'

  # sends an email when a user confrims a boooking
  def send_confirmation_email(user)
    @user = user
    mail(to: @user.email, subject: "Can't wait to see you in class")
  end
end
