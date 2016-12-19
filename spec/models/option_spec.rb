require 'spec_helper'

describe Option do
  it "has a valid factory" do
		FactoryGirl.create(:option).should be_valid
  end
  it "returns only user editable data as JSON" do
  	shop = FactoryGirl.create(:shop)
  	option_json = FactoryGirl.create(:option).json
  	option_json.include?("shop_id").should be false 
  	option_json.include?("created_at").should be false
  	option_json.include?("updated_at").should be false
  end
end