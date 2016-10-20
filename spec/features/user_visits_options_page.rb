require 'spec_helper'

feature 'User goes to the options page' do
  scenario 'and that\'s it' do
    user_installs_app 'cart-timer.myshopify.com'
    expect(page).to have_content('Options')
  end

  scenario 'and fills in some options' do
		user_installs_app 'cart-timer.myshopify.com'
  	fill_in 'option[timer_label_text]', with: 'I\'m sorry Dave, I\'m afraid I can\'t do that'
  	fill_in 'option[timer_warning_message]', with: 'What a to do to die today at a minute or two to two.'
  	fill_in 'option[timer_expired_message]', with: 'A thing distinctly hard to say but a harder thing to do.'
  	fill_in 'option[custom_css]', with: '.the_end {color: black;background: #925083;border:5px dashed #980806}'
  	click_button 'Update Option'
  	expect(page).to have_content('I\'m sorry Dave, I\'m afraid I can\'t do that')
  	expect(page).to have_content('What a to do to die today at a minute or two to two.')
  	expect(page).to have_content('A thing distinctly hard to say but a harder thing to do.')
  	expect(page).to have_content('.the_end {color: black;background: #925083;border:5px dashed #980806}')
  	# expect{
  	#   click_button 'Update Option'
  	# }.to change(Option.find(1), :timer_label_text)
  end

  def user_installs_app(shopify_url)
    visit login_path
    fill_in 'shop', with: shopify_url
    click_button 'Install'
  end

end