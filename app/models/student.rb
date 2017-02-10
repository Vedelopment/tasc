class Student < ApplicationRecord
  has_many :student_courses
  has_many :courses, through: :student_courses

  has_many :submissions

  validates :user_name, presence: true, uniqueness: true, length: {minimum: 3}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password

  def self.confirm(params)
    @student = Student.find_by({email: params[:email]})
    @student ? @student.authenticate(params[:password]) : false
  end

end
