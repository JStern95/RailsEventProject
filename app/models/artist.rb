class Artist < ApplicationRecord
  belongs_to :record_label
  has_many :events
end
