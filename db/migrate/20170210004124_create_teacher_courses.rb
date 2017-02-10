class CreateTeacherCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_courses do |t|
      t.references :teacher, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
