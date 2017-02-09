Rails.application.routes.draw do
  root 'welcome#index'

  # Courses
  get '/courses/:id' => 'courses#show', as: 'course'

  # Assignments
  get '/courses/:course_id/assignments' => 'assignments#index', as: 'assignments'
  get '/assignments/:id' => 'assignments#show', as: 'assignment'

  # Students
  get '/courses/:course_id/students' => 'students#index', as: 'students'
  get '/courses/:course_id/students/:id' => 'students#show', as: 'student'
  get '/students/new' => 'students#new', as: 'new_student'
  post '/students' => 'students#create'
  get '/students/:id/edit' => 'students#edit', as: 'edit_student'
  patch '/students/:id' => 'students#update'

  # Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
