class AddAttributeToAssignment < ActiveRecord::Migration[5.0]
  def change
    add_column :assignments, :duedate, :datetime
    add_column :assignments, :is_opensource, :boolean
  end
end
