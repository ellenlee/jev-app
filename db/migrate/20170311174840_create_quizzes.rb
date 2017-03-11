class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.integer :assignment_id
      t.string :name
      t.timestamps
      t.index :assignment_id
    end
  end
end
