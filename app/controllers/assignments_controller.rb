class AssignmentsController < ApplicationController

  before_filter :require_login

  def index
    @course = Course.find_by_id(params[:course_id])
    @assignments = @course.assignments.order(:assign_date).reverse
  end

  def show
    @assignment = Assignment.find_by_id(params[:id])
  end

  def new
   @assignment = Assignment.new
   @course = Course.find_by_id(params[:id])
  end

  def edit
    assignment_id = params[:id]
    @assignment = Assignment.find_by_id(assignment_id)
    render :edit
  end

  def create
    new_assignment = Assignment.new(assignment_params)
    @course = Course.find_by_id(params[:id])
    new_assignment.course  = @course
    if @assignment = new_assignment.save
      redirect_to course_path(@course)
    else
       new_assignment.errors.full_messages.each do |message|
         flash[:error] = message
       end
      redirect_to new_assignment_path(@course)
    end
  end

  def update
    assignment_id = params[:id]
      @assignment = Assignment.find_by_id(assignment_id)

      if @assignment.update_attributes(assignment_params)
        flash[:notice] = "Updated successfully."
        redirect_to course_path(@assignment.course)
      else
        @assignment.errors.full_messages.each do |message|
          flash[:error] = message
        end
        redirect_to edit_assignment_path(@assignment)
      end
  end

  def destroy

  end

  private

  def assignment_params
    params.require(:assignment).permit(:title, :instructions, :assign_date, :due_date, :duration, :visible)
  end
end
