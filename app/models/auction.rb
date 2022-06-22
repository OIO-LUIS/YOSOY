class Auction < ApplicationRecord
    belongs_to :user, through: :profile
end
