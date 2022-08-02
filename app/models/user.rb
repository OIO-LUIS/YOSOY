class User < ApplicationRecord

  has_one  :atma
  has_one  :persona
  has_one  :wrd_pwr
  has_many :profiles
  has_many :meeting_locations
  has_one  :subscription
  has_many :products, through: :profile
  has_many :services, through: :profile
  has_many :auctions

  validates_uniqueness_of :email
  validates_uniqueness_of :identity


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
