class PaymentController < ApplicationController
  def index
    if params[:product].nil? || params[:product].blank?
      redirect_to root_path
    else 
      @product = Product.find(params[:product])
      @user = current_user
    end
  end

  def charge
  	user = current_user

  	result = user.charge_account(
  		params[:stripeToken],
  		params[:amount]
  	)

  	if result[:response] == 200
      charge = result[:charge]
      email = params[:email]
      product = Product.find(params[:product_id])
      SendEmailJob.set(wait: 10.seconds).perform_later(email, charge.id, product)
  		render 'payment/thank_you'
  	else
  		flash[:alert] = result[:error]
  		redirect_to(:back)
  	end
  end

  def thank_you
    #Send to action mailer with login for parent stripe account.
    #Attach link to charge.
    @charge = params[:charge]
    @product = Product.find(params[:product_id])

  end
end
