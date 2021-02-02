class ChargesController < ApplicationController
  def new
  end
  
  def create
    session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        price_data: {
          unit_amount: 2500,
          currency: 'aud',
          product_data: {
            name: 'Kulu Yoga Studio',
          },
        },
        quantity: 1,
      }],
      mode: 'payment',
      success_url: "http://localhost:3000/charges/success",
      cancel_url: "http://localhost:3000/charges/cancel",
    })
    render json: { id: session.id }
  end


end
