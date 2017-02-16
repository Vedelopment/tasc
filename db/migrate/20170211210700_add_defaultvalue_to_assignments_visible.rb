class AddDefaultvalueToAssignmentsVisible < ActiveRecord::Migration[5.0]
  def change
    change_column_default :assignments, :visible, true
  end
end
