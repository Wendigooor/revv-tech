class PaymentController < ApplicationController
  def index
  	@product = Product.find(params[:product])
  end

  def charge
  	Stripe.api_key = ENV['stripe_secret_key']
  	# Get the credit card details submitted by the form
	token = params[:stripeToken]

	amount = params[:amount] * 100

	# Calculate the fee amount that goes to the application.
    fee = (amount * 0.10).to_i

    begin
		# Create the charge on Stripe's servers - this will charge the user's card
		charge = Stripe::Charge.create({
		    :amount => amount, # amount in cents
		    :currency => "usd",
		    :source => token,
		    :description => "Example charge",
		    :application_fee => fee # amount in cents
		  },
		  {:stripe_account => CONNECTED_STRIPE_ACCOUNT_ID}
		)
	rescue Stripe::CardError => e
      error = e.json_body[:error][:message]
      flash[:error] = "Charge failed! #{error}"
    end

    redirect_to payment_thank_you_path
  end
end
