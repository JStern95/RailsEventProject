class Event < ApplicationRecord
  belongs_to :artist
  belongs_to :venue
  has_many :tickets
  has_many :users, through: :tickets
  validates_date :show_date
  validates_time :show_time
  validates :show_date, timeliness: {on_or_after: Date.today,
    message: "Events can't happen in the past!"}
  validates_inclusion_of :city, :in => ["New York City", "Boston", "Philadelphia"]

  def date_display
    date_array=self.show_date.to_s.split("-")
    [ date_array[1], date_array[2], date_array[0]].join("/")
  end

  def time_display
    # time_array=self.show_time.to_s.split(" ")
    # time_array[1]
    @time = self.show_time.strftime("%I:%M %p")
  end
end
