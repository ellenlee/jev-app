class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.integer :section_id
      t.string :name
      t.timestamps
      t.index :section_id
    end
  end
end
