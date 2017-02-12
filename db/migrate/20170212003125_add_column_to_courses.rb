class AddColumnToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :github, :string
  end
end
