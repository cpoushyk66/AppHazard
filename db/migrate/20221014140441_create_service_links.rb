class CreateServiceLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :service_links do |t|
      t.integer :service_id, null: false
      t.integer :user_id, null: false
      t.boolean :accepted, null: false, default: false
      t.integer :user_access_level, null: false, default: 0
      t.boolean :service_access_profile, null: false, default: false
      t.boolean :service_access_medical_profile, null: false, default: false


      t.timestamps
    end
  end
end
