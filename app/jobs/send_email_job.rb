class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(email, charge, product)
  	OrderMailer.confirmation_email(email, charge, product).deliver_later
  end
end
