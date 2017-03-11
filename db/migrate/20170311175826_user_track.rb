class UserTrack < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :track_id, :integer
  end
end
