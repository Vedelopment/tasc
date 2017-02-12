class Teacher < ApplicationRecord
  has_many :teacher_courses
  has_many :courses, through: :teacher_courses

  validates :user_name, presence: true, uniqueness: true, length: {minimum: 3}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password

  def self.confirm(params)
    @teacher = Teacher.find_by({email: params[:email]})
    @teacher ? @teacher.authenticate(params[:password]) : false
  end
end
