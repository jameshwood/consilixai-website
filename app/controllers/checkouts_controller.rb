class CheckoutsController < ApplicationController
  # before_action :authenticate_user! # Temporarily disabled

  def show
    current_user.set_payment_processor :stripe
    current_user.payment_processor.customer

    @checkout_session = current_user.payment_processor.checkout(
      mode: 'payment',
      line_items: ENV[:STRIPE_PRICE_ID], # Set in .env file
      success_url: checkout_success_url
    )
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @line_items = Stripe::Checkout::Session.list_line_items(@session.id)
  end
end