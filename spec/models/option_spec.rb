require 'spec_helper'

describe Shop do
  it "has a valid factory" do
  	FactoryGirl.create(:shop).should be_valid
  end
end

describe Option do
  it "has a valid factory" do
		FactoryGirl.create(:option).should be_valid
  end
  it "has a valid button text" do
  	FactoryGirl.build(:option, button_1_text: nil).should_not be_valid
  	FactoryGirl.build(:option, button_2_text: nil).should_not be_valid
  end
  it "returns only user editable data as JSON" do
  	shop = FactoryGirl.create(:shop)
  	option_json = FactoryGirl.create(:option).json
  	option_json.include?("shop_id").should be false 
  	option_json.include?("created_at").should be false
  	option_json.include?("updated_at").should be false
  end
end