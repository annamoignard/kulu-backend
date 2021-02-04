class ChargesController < ApplicationController
  def new
  end
  
  def create
    booking = Booking.find(params[:id])

    #creating session id for stripe
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
      success_url: "http://localhost:3000/charges/success?booking_id=#{booking.id}",
      cancel_url: "http://localhost:3000/charges/cancel",
    })
    render json: { id: session.id }
  end

  def webhook
    payload = request.body.read
    puts payload.inspect
  end

  def success
    @booking = Booking.find(params[:booking_id])
  end

  def cancel; end
end