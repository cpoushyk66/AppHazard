class CreateConditions < ActiveRecord::Migration[7.0]
  def change
    create_table :conditions do |t|
      t.string :name, null: false
      t.string :limitations, null: false
      t.string :duration, null: false
      t.boolean :treatable, null: false
      t.boolean :curable, null: false

      t.timestamps
    end
  end
end
