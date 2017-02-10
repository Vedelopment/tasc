class Course < ApplicationRecord
  has_many :student_courses
  has_many :students, through: :student_courses
  has_many :assignments

  has_many :teacher_courses
  has_many :teachers, through: :teacher_courses
end
