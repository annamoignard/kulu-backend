# frozen_string_literal: true

class ChargesController < ApplicationController
  def new; end

  def create
    booking = Booking.last
    # creating session id for stripe
    session = Stripe::Checkout::Session.create({
                                                 payment_method_types: ['card'],
                                                 line_items: [{
                                                   price_data: {
                                                     unit_amount: 2500,
                                                     currency: 'aud',
                                                     product_data: {
                                                       name: 'Kulu Yoga Studio'
                                                     }
                                                   },
                                                   quantity: 1
                                                 }],
                                                 mode: 'payment',
                                                 success_url: "http://localhost:8080/success/#{booking.id}",
                                                 cancel_url: 'http://localhost:8080/charges/cancel'
                                               })
    render json: { id: session.id }
    UserConfirmationMailer.send_confirmation_email(current_user).deliver
  end

  def success
    # @booking = Booking.find(params[:id])
  end

  def cancel; end
end
