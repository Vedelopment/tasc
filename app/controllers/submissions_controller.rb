class SubmissionsController < ApplicationController

  before_filter :require_login

  def show
    @submission = Submission.find_by_id(params[:id])
    @assignment = @submission.assignment
  end

  def new
    @assignment = Assignment.find_by_id(params[:id])
    @submission = Submission.new
  end

  def edit
    @submission = Submission.find_by_id(params[:id])
    @assignment = @submission.assignment
  end

  def create
    @assignment = Assignment.find_by_id(params[:id])
    submission = Submission.new(submission_params)
    submission.assignment = @assignment
    submission.student = Student.all.sample #this needs to be changed when we have sessions working

    if submission.save
      redirect_to assignments_path(@assignment.course)
    else
      flash[:error] = @assignment.errors.full_messages.join(". ")
      redirect_to new_submission_path
    end
  end

  def update
    submission_id = params[:id]
    @submission = Submission.find_by_id(params[:id])

    if @submission.update_attributes(submission_params)
      flash[:notice] = "Updated successfully."
      redirect_to submission_path(@submission)
    else
      @submission.errors.full_messages.each do |message|
        flash[:error] = message
      end
      redirect_to edit_submission_path
    end
  end

  def destroy
    submission = Submission.find_by_id(params[:id])
    assignment = submission.assignment_id
    submission.destroy
    redirect_to assignment_path(assignment)
  end

  private

  def submission_params # content required.  link not required in case there is no homework on a day.
    params.require(:submission).permit(:content)
  end

end
