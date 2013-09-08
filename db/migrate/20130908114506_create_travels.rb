class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.integer :trip_id
      t.integer :rower_id

      t.timestamps
    end
  end
end
