class StudentsController < ApplicationController
  def index
    @course = Course.find_by_id(params[:course_id])
    @students = @course.students
  end

  def show
    @course = Course.find_by_id(params[:course_id])
    @student = Student.find_by_id(params[:id])
  end

  def new
    @student = Student.new
    @course = Course.find_by_id(params[:course_id])
  end

  def create
    @course = Course.last
    student = Student.new(student_params)
      if student.save
        @course.students << student
        redirect_to student_path(@course, student)
      else
        flash[:error] = student.errors.full_messages.join(". ")
        redirect_to new_student_path
      end
  end

  def edit
    @course = Course.find_by_id(params[:course_id])
    @student = Student.find_by_id(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :user_name, :email, :password_digest, :slack, :github, :linkedin)
  end

end
