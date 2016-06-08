class User < ActiveRecord::Base
	require 'stripe'
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable, :omniauthable


	def self.from_omniauth(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
		    user.email = auth.info.email
		    user.password = Devise.friendly_token[0,20]
		    access_code = auth.credentials.token
	      	publishable_key = auth.info.stripe_publishable_key
		end
	end

	def charge_account(token, amount)
		Stripe.api_key = ENV['stripe_secret_key']
	  	# Get the credit card details submitted by the form

		amount = (amount.to_f * 100).to_i

		# Calculate the fee amount that goes to the application.
	    fee = (amount * 0.10).to_i

	    result = {}
	    begin
			# Create the charge on Stripe's servers - this will charge the user's card
			charge = Stripe::Charge.create({
			    :amount => amount, # amount in cents
			    :currency => "usd",
			    :source => token,
			    :description => "Example charge",
			    :application_fee => fee, # amount in cents
			  	:destination => self.uid
			  }
			)

			result[:response] = 200
			result[:charge] = charge

		rescue Stripe::CardError => e
	      error = e.json_body[:error][:message]
	      result[:response] = 500
	      result[:error] = "Charge failed! #{error}"
	    end
	   	
	   	result

	end
end
