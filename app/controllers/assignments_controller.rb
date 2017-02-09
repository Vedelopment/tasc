class AssignmentsController < ApplicationController

  def index
    @course = Course.find_by_id(params[:course_id])
    @assignments = @course.assignments
  end

  def show
    @assignment = Assignment.find_by_id(params[:id])
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
