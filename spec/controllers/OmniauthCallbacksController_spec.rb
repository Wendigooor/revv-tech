# require 'spec_helper'
 
# describe OmniauthCallbacksController do
 
#   before do
#     request.env["devise.mapping"] = Devise.mappings[:user] # If using Devise
#     request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:stripe]
#   end
 
#   describe "#stripe_connect" do
    
#     it "should successfully create a user" do
#       expect {
#         post :stripe_connect, provider: :stripe_connect
#       }.to change{ User.count }.by(1)
#     end
#   end
# end