class AssignmentsController < ApplicationController

  def index
    @course = Course.find_by_id(params[:course_id])
    @assignments = @course.assignments
  end

  def show

  end

  def new

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end
end
