require 'spec_helper'

describe Shop do
  it "has a valid factory" do
  	FactoryGirl.create(:shop).should be_valid
  end

  it "builds an instance of Option when created" do
    shop = FactoryGirl.create(:shop)
    shop.option.should_not be_nil
  end
end