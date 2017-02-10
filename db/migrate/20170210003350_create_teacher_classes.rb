class CreateTeacherClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_classes do |t|
      t.references :teacher, foreign_key: true
      t.references :class, foreign_key: true

      t.timestamps
    end
  end
end
