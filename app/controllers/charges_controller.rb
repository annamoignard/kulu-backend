# frozen_string_literal: true

class ChargesController < ApplicationController
  def new; end

  def create
    booking = Booking.last

    if Rails.env.development?
      url = "http://localhost:8080"
    else
      url = "https://brave-wescoff-afa9bb.netlify.app"
    end
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
      success_url: "#{url}/success",
      cancel_url: "#{url}/cancel"
    })
    render json: { id: session.id }
  end

  def success
    # @booking = Booking.find(params[:id])
  end

  def cancel; end
end
