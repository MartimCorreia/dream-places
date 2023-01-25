class Booking < ApplicationRecord
  belongs_to :house
  has_one :user
end
