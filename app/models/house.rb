class House < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_one :notification
  validates_presence_of :name, :description, :rules, :price_per_night
end
