class SubmissionsController < ApplicationController
  def show
    @submission = Submission.find_by_id(params[:submission_id])
  end

  def new
    @assignment = Assignment.find_by_id(params[:assignment_id])
    @submission = Submission.find_by_id(params[:submission_id])
  end

  def edit
    @assignment = Assignment.find_by_id(params[:assignment_id])
    @submission = Submission.find_by_id(params[:submission_id])
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
    submission_id = params[:id]
    @submission = Submission.find_by_id(params[:submission_id])

    if @submission.update_attributes(submission_params)
      flash[:notice] = "Updated successfully."
      redirect_to submission_path(@submission)
    else
      @submission.errors.full_messages.each do |message|
        flash[:error] = message
      end
      redirect_to edit_submission_path
  end

  def destroy
    submission = Submission.find_by_id(params[:id])
    assignment = submission.assignment_id
    submission.destroy
    redirect_to assignment_path(assignment)
  end


  def destroy
    @city = City.find_by_id(params[:city_id])
    post = Post.find_by_id(params[:id])
    post.destroy
    redirect_to city_path(@city)
  end

  private

  def submission_params # content required.  link not required in case there is no homework on a day.
    params.require(:submission).permit(:content)
  end
end
