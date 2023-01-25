require 'rails_helper'

RSpec.describe House, :type => :model do


  house = House.new(name: "Anything",
                    description: "A description",
                    rules: "Has rules",
                    price_per_night: 10)

  describe "Validations" do

    it "is valid with valid attributes" do
      expect(house).to be_valid
    end

    it "is not valid without a name" do
      house.name = nil
      expect(house).to_not be_valid
    end

    it "is not valid without a description" do
      house.description = nil
      expect(house).to_not be_valid
    end

    it "is not valid without rules" do
      house.rules = nil
      expect(house).to_not be_valid
    end

    it "is not valid without a price per night" do
      house.price_per_night = nil
      expect(house).to_not be_valid
    end

  end

  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
  end

end
