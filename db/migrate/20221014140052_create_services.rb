class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.integer :station_id, null: false
      t.string :service_type, null: false
      t.string :service_phone_number, null: false
      t.boolean :active, null: false, default: true
      t.boolean :accepting_links, null: false, default: true
      

      t.timestamps
    end
  end
end
