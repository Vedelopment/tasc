class Student < ApplicationRecord
  has_many :student_courses
  has_many :courses, through: :student_courses

  has_many :submissions
  has_many :assignments, through: :submissions

  validates :user_name, presence: true, uniqueness: true, length: {minimum: 3}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  # validates :password, :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\z/, message: "must be at least 6 characters and include one number and one letter."}
  has_secure_password

  def self.confirm(params)
    @student = Student.find_by({email: params[:email]})
    @student ? @student.authenticate(params[:password]) : false
  end

  def self.get_profile_pic(student)
    student.profile_image = Student.get_github_img (student.github)
    student.save
  end

  def self.get_github_img (github_user)
    github_username = Student.parse_github_username(github_user)
    response = HTTParty.get('https://api.github.com/users/' + github_username)
    return response["avatar_url"]
  end

  def self.parse_github_username (github_url)
    temp_array = github_url.split('/')
    username = temp_array[temp_array.length - 1]
    return username
  end
end
