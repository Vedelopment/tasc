class SessionsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    student_params = params.require(:student).permit(:email, :password)


    if @student = Student.confirm(student_params)
      login(@student)
      redirect_to student_path(@student)
    elsif @teacher = Teacher.confirm(student_params)
      tlogin(@teacher)
      redirect_to teacher_path(@teacher)

    else
      flash[:error] = "You typed your password or email wrong. Check caps lock!"
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice] = "You've logged out."
    redirect_to root_path
  end
end
