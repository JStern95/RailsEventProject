class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :city
      t.string :venue_id
      t.date :show_date
      t.time :show_time
      t.integer :artist_id

      t.timestamps
    end
  end
end
