class AddColumnsToFeedbacks < ActiveRecord::Migration[5.0]
  def change
    add_column :feedbacks, :communication_id, :integer
    add_column :feedbacks, :communication_type, :string
  end
end
