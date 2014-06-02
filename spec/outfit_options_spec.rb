require 'spec_helper'

describe OutfitOptions do
  let (:test_options) { OutfitOptions.new }
  let (:outfit_1)     { "Long grey dress, teal bag, flip flops." }

  context "#brnch_noon_friends" do
    it "returns dress, flip flops and purse" do
      test_options.brunch_noon_friends.should == outfit_1
    end
  end
end
