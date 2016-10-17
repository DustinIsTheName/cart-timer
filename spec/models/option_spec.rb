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
  	FactoryGirl.build(:contact, button_1_text: nil).should_not be_valid
  	FactoryGirl.build(:contact, button_2_text: nil).should_not be_valid
  end
  it "returns all user editable data as JSON"
end