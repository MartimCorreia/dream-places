class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :houses, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_one_attached :picture
  validates_presence_of :firstName, :lastName, :email, :password

  def picture_thumbnail
    picture.variant(resize_to_fill: [200, 200]).processed
  end

  def picture_small
    picture.variant(resize_to_fill: [40, 40]).processed
  end
end
