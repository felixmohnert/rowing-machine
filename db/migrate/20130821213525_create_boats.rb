class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :title
      t.boolean :coxed
      t.integer :seats

      t.timestamps
    end
  end
end
