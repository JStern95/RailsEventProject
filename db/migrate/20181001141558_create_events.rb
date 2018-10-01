class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :location
      t.string :venue
      t.integer :artist_id

      t.timestamps
    end
  end
end
