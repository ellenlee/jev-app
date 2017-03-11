class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.integer :track_id
      t.string :name
      t.timestamps

      t.index :track_id
    end
  end

end
