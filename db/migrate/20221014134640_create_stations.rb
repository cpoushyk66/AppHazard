class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :street_address, null: false
      t.string :station_phone_number, null: false


      t.timestamps
    end
  end
end
