class CreateDiagnoses < ActiveRecord::Migration[7.0]
  def change
    create_table :diagnoses do |t|
      t.integer :medical_profile_id, null: false
      t.integer :condition_id, null: false
      t.integer :doctor_id
      t.string :notes, null: false

      t.timestamps
    end
  end
end
