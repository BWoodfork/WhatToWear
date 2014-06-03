require 'spec_helper' 
require 'dinner_outfits'

describe DinnerOutfits do 
  let (:test_outfits) { DinnerOutfits.new }

  context '#initialize' do 
    it "initializes with empty records" do 
      test_outfits.records.should == {}
    end

    it "should initialize with an id" do 
      test_outfits.id.should == 1
    end
  end

  context '#save' do 
    it "saves an outfit with an id" do 
      test_outfits.save("Black dress")

      test_outfits.records.values[1].should == "Black dress"
    end

    xit "set an id on the outfit that it saves" do 
      test_outfits.save("Black dress")
      test_outfits.save("Red dress")

      test_outfits.records[2].should == "Red dress"
    end
  end
end