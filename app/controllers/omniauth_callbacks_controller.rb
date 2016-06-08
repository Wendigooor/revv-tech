class OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def stripe_connect
	    @user = User.from_omniauth(request.env["omniauth.auth"])
	    
	    if @user.persisted?
	      # anything else you need to do in response..
	      sign_in_and_redirect @user, :event => :authentication
	      set_flash_message(:notice, :success, :kind => "Stripe") if is_navigational_format?
	    else
	      session["devise.stripe_connect_data"] = request.env["omniauth.auth"]
	      redirect_to new_user_registration_url
	    end
	end
end
