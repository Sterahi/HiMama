class User < ApplicationRecord
    has_many :users_clock
    has_many :clock_event, through: :users_clock
end
