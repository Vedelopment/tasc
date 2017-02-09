class StudentsController < ApplicationController
  def index
    @course = Course.find_by_id(params:course_id)
    @students = Student.all
  end

  def show
    @course = Course.find_by_id(params:course_id)
    @student = Student.find_by_id(params:id)
  end
end
