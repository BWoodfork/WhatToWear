require 'spec_helper'

describe OutfitOptions do
  let (:test_options) { OutfitOptions.new }
  let (:outfit_1)     { "Long grey dress, teal bag, flip flops." }
  let (:settings)     { {} }

  context "#find_outfit_for" do 
    it "returns the porper outfit for brunch at noon with friends" do
      settings[:occasion] = "brunch"
      settings[:with_who] = "friends"

      test_options.find_outfit_for(settings).should == outfit_1
    end

    it "returns the porper outfit for dinner with friends" do
      settings[:occasion] = "dinner"
      settings[:with_who] = "friends"

      test_options.find_outfit_for(settings).should == "Black dress"
    end

    it "returns the propper outfit for dinner with family" do 
      settings[:occasion] = "dinner"
      settings[:with_who]   = "family"

      test_options.find_outfit_for(settings).should == "Jeans and tee"
    end
  end

  context "#brunch_with_friends" do
    it "returns dress, flip flops and purse" do
      test_options.brunch_with_friends.should == outfit_1
    end
  end

  context '#dinner_with_friends' do 
    it "retruns an outfit for dinner with friends" do 
      test_options.dinner_with_friends.should == "Black dress"
    end
  end
end
