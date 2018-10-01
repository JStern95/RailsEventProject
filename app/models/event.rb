class Event < ApplicationRecord
  belongs_to :artist
  has_many :tickets
  has_many :users, through: :tickets

  def date_display
    date_array=self.show_date.to_s.split("-")
    [ date_array[1], date_array[2], date_array[0]].join("/")
  end

  def time_display
    time_array=self.show_time.to_s.split(" ")
    time_array[1]
  end
end
