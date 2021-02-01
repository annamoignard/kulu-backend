class ChargesController < ApplicationController
  def new
  end
  
  def create
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    order = Order.find(params[:orderId])
    amount = order.session.sum(:cost) * 100

    charge = Stripe::Charge.create(
      customer => customer.id,
      amount => amount,
      description: 'Kulu Yoga Studio',
      currency: 'aud',
      :source => params[:token]
    )

  rescue Stripe::CardError => e
    flash[:errors] = e.message
    redirect_to new_charge_path
  end

end
