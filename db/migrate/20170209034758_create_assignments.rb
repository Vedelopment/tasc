class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :instructions
      t.timestamp :assign_date
      t.timestamp :due_date
      t.float :duration
      t.boolean :visible

      t.timestamps
    end
  end
end
