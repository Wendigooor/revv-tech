class PaymentController < ApplicationController
  def index
  	@product = Product.find(params[:product])
  	@user = current_user
  end

  def charge
  	user = current_user
    

  	result = user.charge_account(
  		params[:stripeToken],
  		params[:amount]
  	)

  	if result[:response] == 200
      @charge = result[:charge]
      @product = Product.find(params[:product_id])
  		render 'payment/thank_you'
  	else
  		flash[:notice] = result[:error]
  		redirect_to(:back)
  	end
  end

  def thank_you
    @charge = params[:charge]
    @product = Product.find(params[:product_id])
  end
end
