class CreateMedicines < ActiveRecord::Migration[7.0]
  def change
    create_table :medicines do |t|
      t.string :name, null: false
      t.string :most_common_usage, null: false
      t.string :drug_class

      t.timestamps
    end
  end
end
