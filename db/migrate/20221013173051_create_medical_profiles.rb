class CreateMedicalProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_profiles do |t|
      t.integer :user_id, null: false
      t.decimal :weight, null: false
      t.decimal :height, null: false
      t.string :hair_color, null: false
      t.string :eye_color, null: false
      t.string :race, null: false
      t.string :sex, null: false
      t.string :gender, null: false
      t.string :blood_type, null: false
      t.date :birth_date, null: false

      t.timestamps
    end
  end
end
