class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.float :score
      t.text :content

      t.timestamps
    end
  end
end
