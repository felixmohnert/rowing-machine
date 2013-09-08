class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :start
      t.string :destination
      t.integer :boat_id
      t.integer :travel_id

      t.timestamps
    end
  end
end
