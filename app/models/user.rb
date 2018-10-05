class User < ApplicationRecord
  has_secure_password
  has_many :tickets
  has_many :events, through: :tickets

  validates :username, presence: true, uniqueness: true
  validates :username, length: { minimum: 3 }

  validates :email, presence: true, uniqueness: true
  validates_with EmailAddress::ActiveRecordValidator, field: :email

  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :city, presence: true
  validates_inclusion_of :city, :in => ["New York City", "Boston", "Philadelphia"]

  validates :password, presence: true

end
