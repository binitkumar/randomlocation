class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :pin
      t.string :latitude
      t.string :longitude
      t.integer :data_type

      t.timestamps
    end
  end
end
