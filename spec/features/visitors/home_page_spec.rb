# Feature: Home page
#   As a visitor
#   I want to visit a home page
#   So I can purchase a product
feature 'Home page' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   check if Stripe account is connected
  #   Then Click the first product
  #   Then fill in card information
  #   Then submit payment form
  #   Expect thank you page
  scenario 'visit the home page, select product, purchase and assert thank you page' do
    # visit root_path
    # post user_stripe_connect_omniauth_callback_path
    # expect(page).to have_current_path(root_path)
    # click_link "Stripe Connect"
    # expect(page).to have_current_path(payment_path(product: 1))
  end

end
