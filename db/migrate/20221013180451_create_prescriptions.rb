class CreatePrescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :prescriptions do |t|
      t.integer :medical_profile_id, null: false
      t.integer :medicine_id, null: false
      t.integer :prescriber_id
      t.string :prescribed_for, null: false
      t.string :dosage, null: false

      t.timestamps
    end
  end
end
