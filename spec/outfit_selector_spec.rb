require 'spec_helper'

describe OutfitSelector do
  let (:outfit_1) { OnePieceOutfit.new("foo", "bar") }
  let (:settings) { {} }
  let (:selector) { OutfitSelector.new }
  it "returns the porper outfit for brunch at noon with friends" do
    settings[:occasion]    = "brunch"
    settings[:time_of_day] = "noon"
    settings[:with_who]    = "friends"

    selector.find_outfit_for(settings).should == outfit_1
  end
end
