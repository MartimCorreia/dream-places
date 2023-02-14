class NotificationPanel < ApplicationRecord
  has_many :notifications
  belongs_to :user

  
end
