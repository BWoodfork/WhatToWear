require 'spec_helper'

describe OutfitOptions do
  let (:test_options) { OutfitOptions.new }
  let (:outfit_1)     { "Long grey dress, teal bag, flip flops." }
  let (:settings)     { {} }

  context "#brunch_with_friends" do
    it "returns dress, flip flops and purse" do
      test_options.brunch_with_friends.should == outfit_1
    end
  end

  context "#find_outfit_for" do 
    it "returns the porper outfit for brunch at noon with friends" do
      settings[:occasion]    = "brunch"
      settings[:with_who]    = "friends"

      test_options.find_outfit_for(settings).should == outfit_1
    end
  end
end
