require 'spec_helper'
require 'shopify_app'

describe HomeController do

	describe "GET index" do
		# it "finds a shop" do
		# 	request.env['HTTPS'] = 'on'
		# 	shop = FactoryGirl.create(:shop)
		# 	get :index
		# 	assigns(:shop).should eq(shop)
		# end

		# it "finds a shop's options" do
		# 	shop = FactoryGirl.create(:shop)
		# end

	end

	describe "PATCH update" do

	end

	describe "GET install_instructions" do
		it 'renders install_instructions.html.erb' do
			get :install_instructions
			response.should render_template("install_instructions")
		end
	end

	describe "GET timer-js" do

	end

end