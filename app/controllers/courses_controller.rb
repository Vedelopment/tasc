class CoursesController < ApplicationController

  def show
    @course = Course.find_by_id(params[:id])
  end



  # private
  # def student_params
  #   params.require(:student).permit(:first_name, :last_name, :user_name, :email, :password_digest, :slack, :github, :linkedin)
  # end

end
