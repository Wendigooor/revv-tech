# require 'spec_helper'
 
# describe OmniauthCallbacksController do
 
#   before do
#     request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:stripe]
#   end
 
#   describe "#stripe_connect" do
    
#     it "should successfully create or sign in a user" do
#       expect {
#         click_link 'Stripe Connect'
#       }.to change{ User.count }.by(1)
#     end
#   end
# end