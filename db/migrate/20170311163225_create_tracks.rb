class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :name, null: false, default: ""
      t.timestamps
    end
    add_index :tracks, :name, unique: true
  end
end
