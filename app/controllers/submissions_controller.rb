class SubmissionsController < ApplicationController
  def show
    @submission = Submission.find_by_id(params[:submission_id])
  end

  def new
    @assignment = Assignment.find_by_id(params[:assignment_id])
    @submission = Submission.find_by_id(params[:submission_id])
  end

  def edit

  end

  def create
    @assignment = Assignment.find_by_id(params[:assignment_id])
    submission = Submission.new(submission_params)
    submission.assignment = @assignment
    submission.student = Student.all.sample #this needs to be changed when we have sessions working

    if submission.save
      redirect_to assignments_path(@assignment.course)
    else
      flash[:error] = student.errors.full_messages.join(". ")
      redirect_to new_submission_path
    end
  end

  def update

  end

  def destroy

  end

  private

  def submission_params # content required.  link not required in case there is no homework on a day.
    params.require(:submission).permit(:content)
  end
end
