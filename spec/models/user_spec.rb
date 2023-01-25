require 'rails_helper'

RSpec.describe User, :type => :model do

  user = User.new(firstName: "Anything",
            lastName: "Anything",
            email: "Anything@anything.com",
            password: "Anything")

  it "is valid with valid attributes" do
    expect(user).to be_valid
  end


  it "is not valid without a First Name" do
    user.firstName = nil
    expect(user).to_not be_valid
  end
  it "is not valid without a Last Name" do
    user.lastName = nil
    expect(user).to_not be_valid
  end
  it "is not valid without a email" do
    user.email = nil
    expect(user).to_not be_valid
  end
  it "is not valid without a password" do
    user.password = nil
    expect(user).to_not be_valid
  end
end
