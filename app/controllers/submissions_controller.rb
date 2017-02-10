class SubmissionsController < ApplicationController
  def show
    @submission = Submission.find_by_id(params[:submission_id])
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
