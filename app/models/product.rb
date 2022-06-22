class Product < ApplicationRecord
    belongs_to :user, through: :profile
end
