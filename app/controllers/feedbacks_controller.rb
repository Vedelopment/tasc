class FeedbacksController < ApplicationController

  def index
    @student = Student.find_by_id(params[:id])
  end

  def show
    @feedback = Feedback.find_by_id(params[:id])
    if current_student != @feedback.submission.student
      redirect_to student_path(current_student)
    end
  end

  def new
    @feedback = Feedback.new
    @submission = Submission.find_by_id(params[:id])
  end

  def edit
    @feedback = Feedback.find_by_id(params[:id])
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @submission = Submission.find_by_id(params[:id])
    @feedback.submission = @submission

    if @feedback.save
      redirect_to assignment_path(@submission.assignment)
    else
       @feedback.errors.full_messages.each do |message|
         flash[:error] = message
       end
       redirect_to new_feedback_path(@submission.assignment)
    end
  end

  def update
    @feedback = Feedback.find_by_id(params[:id])
    if @feedback.update_attributes(feedback_params)
      flash[:notice] = "Updated successfully."
      redirect_to assignment_path(@feedback.submission.assignment)
    else
      @feedback.errors.full_messages.each do |message|
        flash[:error] = message
      end
      redirect_to edit_feedback_path(@feedback)
    end
  end

  def destroy
    @feedback = Feedback.find_by_id(params[:id])
    @feedback.delete
    # redirect_to current_teacher
  end

  private

  def feedback_params
    params.require(:feedback).permit(:score, :content, :assign_date)
  end

end
