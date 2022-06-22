class Profile < ApplicationRecord
    belongs_to :user, through: :subcription
end
