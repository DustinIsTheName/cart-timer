require 'spec_helper'

feature 'Users uses app' do
  scenario 'and goes to the options page' do
    user_installs_app 'cart-timer.myshopify.com'
    expect(page).to have_content('Options')
  end


  def user_installs_app(shopify_url)
    visit login_path
    fill_in 'shop', with: shopify_url
    click_button 'Install'
  end

end