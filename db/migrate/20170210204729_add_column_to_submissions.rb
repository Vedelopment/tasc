class AddColumnToSubmissions < ActiveRecord::Migration[5.0]
  def change
    add_reference :submissions, :student, foreign_key: true
    add_reference :submissions, :assignment, foreign_key: true
  end
end
