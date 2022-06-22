class CreateMeetingLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :meeting_locations do |t|
      t.string :name
      t.string :lat
      t.string :lng
      t.integer :locationRadius
      t.string :address
      t.string :city
      t.string :province

      t.timestamps
    end
  end
end
