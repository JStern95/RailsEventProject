class Artist < ApplicationRecord
  has_many :events
  has_secure_password

  validates :name, uniqueness: true
  validates :name, presence: true

  validates :username, uniqueness: true
  validates :username, presence: true

  validates :email, presence: true, uniqueness: true
  validates_with EmailAddress::ActiveRecordValidator, field: :email
end
