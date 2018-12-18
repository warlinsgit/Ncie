
=begin
class ChargesController < ApplicationController


rescue_from Stripe::CardError, with: :catch_exception
def new
end

def create
  # Amount in cents
  @amount = (params[:amount].to_f*100).round
  
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'eur'
  )

  if charge.paid && charge.amount == amount 
  	order = Order.created()
  end 

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end





end




Stripe.api_key = "sk_test_nEDClzT0xF4G4grjhkVZhZrP"

product = Stripe::Product.create({
    name: 'My SaaS Platform',
    type: 'service',
})

=end