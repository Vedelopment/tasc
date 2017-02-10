class TeachersController < ApplicationController
  def index
    @course = Course.find_by_id(params[:course_id])
    @teachers = @course.teachers
  end

  def show
    @course = Course.find_by_id(params[:course_id])
    @teacher = Teacher.find_by_id(params[:id])
  end

  def new
    @teacher = Teacher.new
    @course = Course.find_by_id(params[:course_id])
  end

  def create
    @course = Course.last
    teacher = Teacher.new(teacher_params)
      if teacher.save
        @course.teachers << teacher
        redirect_to teacher_path(@course, teacher)
      else
        flash[:error] = teacher.errors.full_messages.join(". ")
        redirect_to new_teacher_path
      end
  end

  def edit
    @course = Course.find_by_id(params[:course_id])
    @teacher = Teacher.find_by_id(params[:id])
  end

  def update
    teacher_id = params[:id]
      @teacher = Teacher.find_by_id(teacher_id)

      if @teacher.update_attributes(teacher_params)
        flash[:notice] = "Updated successfully."
        redirect_to teacher_path(@teacher)
      else
        @teacher.errors.full_messages.each do |message|
          flash[:error] = message
        end
        redirect_to edit_teacher_path(@teacher)
      end
  end
  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :user_name, :email, :password_digest, :slack, :github)
  end
end
