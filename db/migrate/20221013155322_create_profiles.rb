class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false
      t.string :middle_names
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :phone_number, null: false
      t.string :image, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
