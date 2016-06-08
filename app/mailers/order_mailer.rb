class OrderMailer < ApplicationMailer
	def confirmation_email(email, charge, product)
		@charge = charge
		@product = product
	    mail(to: email, subject: 'Order Confirmation', tag: 'order-email')
	end
end
