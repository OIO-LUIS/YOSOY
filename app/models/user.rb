class User < ApplicationRecord

  has_one  :atma
  has_one  :persona
  has_one  :wrd_pwr
  has_many :profiles
  has_many :meeting_locations
  has_one  :subscription
  has_many :products, through: :profile
  has_many :services, through: :profile
  has_many :auctions, through: :profile


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
