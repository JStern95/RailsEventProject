class Event < ApplicationRecord
  belongs_to :artist
  has_many :tickets
  has_many :users, through: :tickets
end
