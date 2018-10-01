class User < ApplicationRecord
  has_many :tickets
  has_many :reviews
  has_many :events, through: :tickets
end
