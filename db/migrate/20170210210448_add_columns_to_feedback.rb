class AddColumnsToFeedback < ActiveRecord::Migration[5.0]
  def change
    add_reference :feedbacks, :submission, foreign_key: true
  end
end
