module SessionsHelper
  def login(student)
    session[:student_id] = student.id

    @current_student = student

  end

  def logout
    session[:student_id] = nil
    @current_student = nil
  end

  def current_student
    @current_student ||= Student.find_by_id(session[:student_id])
  end


  def logged_in?
    !current_student.nil? || !current_teacher.nil?

  end
end
