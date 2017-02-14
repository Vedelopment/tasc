class CoursesController < ApplicationController

  before_filter :require_login

  def show
    @course = Course.find_by_id(params[:id])
  end

end
