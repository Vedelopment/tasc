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

  def edit
    @course = Course.find_by_id(params[:course_id])
    @student = Student.find_by_id(params[:id])
  end

  def create
    @course = Course.last
    student = Student.new(student_params)
      if student.save
        Student.get_profile_pic(student)
        @course.students << student
        redirect_to student_path(@course, student)
      else
        flash[:error] = student.errors.full_messages.join(". ")
        redirect_to new_student_path
      end
  end

  def update
    student_id = params[:id]
      @student = Student.find_by_id(student_id)

      if @student.update_attributes(student_params)
        flash[:notice] = "Updated successfully."
        redirect_to student_path(@student)
      else
        @student.errors.full_messages.each do |message|
          flash[:error] = message
        end
        redirect_to edit_student_path(@student)
      end
  end



  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :user_name, :email, :password, :slack, :github, :linkedin, :profile_image)
  end

end
