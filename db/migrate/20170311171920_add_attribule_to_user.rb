class AddAttribuleToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :string, null: false, default: 'student'
  end
end
