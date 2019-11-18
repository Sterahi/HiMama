class UsersClock < ApplicationRecord
  belongs_to :user
  belongs_to :clock_event
end
