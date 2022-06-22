class Service < ApplicationRecord
    belongs_to :user, through: :profile
end
