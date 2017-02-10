class SessionsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    student_params = params.require(:student).permit(:email, :password)
    @student = Student.confirm(student_params)
    if @student
      login(@student)
      flash[:notice] = "Dude!  You logged in!"
      redirect_to course_path(Course.first)
    else
      flash[:error] = "You typed your password or email wrong. Check caps lock!"
      redirect_to login_path
    end
  end

  def destroy
    session[:student_id] = nil
    flash[:notice] = "You've logged out."
    redirect_to root_path
  end
end
