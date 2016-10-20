# require 'spec_helper'
# require 'shopify_app'

# describe HomeController do

# 	describe "GET index" do
# 		# it "finds a shop" do
# 		# 	request.env['HTTPS'] = 'on'
# 		# 	shop = FactoryGirl.create(:shop)
# 		# 	get :index
# 		# 	assigns(:shop).should eq(shop)
# 		# end

# 		# it "finds a shop's options" do
# 		# 	shop = FactoryGirl.create(:shop)
# 		# end

# 	end

# 	describe "PATCH update" do

# 	end

# 	describe "GET install_instructions" do
# 		it 'renders install_instructions.html.erb' do
# 			user_installs_app 'cart-timer.myshopify.com'
# 			# get :index
# 			response.should render_template("index")
# 		end
# 	end

# 	describe "GET timer-js" do

# 	end

#   def user_installs_app(shopify_url)
#     visit login_path
#     fill_in 'shop', with: shopify_url
#     click_button 'Install'
#   end

# end