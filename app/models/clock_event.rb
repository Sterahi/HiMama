class ClockEvent < ApplicationRecord
    has_many :users_clock
    has_many :user, through: :users_clock
end
