class User < ApplicationRecord
  has_many :tickets
  has_many :events, through: :tickets

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  validates :password, presence: true
end
