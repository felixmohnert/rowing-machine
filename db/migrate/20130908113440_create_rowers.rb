class CreateRowers < ActiveRecord::Migration
  def change
    create_table :rowers do |t|
      t.string :name
      t.date :birthdate
      t.string :address
      t.integer :zip
      t.string :city

      t.timestamps
    end
  end
end
