class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :house
  after_create_commit -> { broadcast_prepend_to "notifications", partial: "notifications/notification", locals: { notification: self }, target: "notification" }
end
