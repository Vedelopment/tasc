Rails.application.routes.draw do
  root 'welcome#index'

  # About
  get '/about' => 'about#index', as: 'about'

  # Courses
  get '/courses/:id' => 'courses#show', as: 'course'

  # Assignments
  get '/courses/:course_id/assignments' => 'assignments#index', as: 'assignments'
  get '/assignments/:id' => 'assignments#show', as: 'assignment'
  post '/courses/:id/assignments' =>  'assignments#create', as: 'create_assignment'
  get '/courses/:id/assignments/new' =>  'assignments#new', as: 'new_assignment'
  get '/assignments/:id/edit' =>  'assignments#edit', as: 'edit_assignment'
  patch '/assignment/:id' =>  'assignments#update'
  delete '/assignments/:id' =>  'assignments#destroy'

  # Students
  get '/courses/:course_id/students' => 'students#index', as: 'students'
  get '/courses/:course_id/students/:id' => 'students#show', as: 'student'
  get '/students/new' => 'students#new', as: 'new_student'
  post '/students/new' => 'students#create'
  get '/students/:id/edit' => 'students#edit', as: 'edit_student'
  patch '/students/:id' => 'students#update'

  # Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # Submissions
  get '/submissions/:id' => 'submission#show', as: 'submission'
  get '/assignments/:id/submissions/new' => 'submission#new', as: 'new_submission'
  post '/assignments/:id/submissions' => 'submission#create', as: 'create_submission'
  get '/submissions/:id/edit' => 'submission#edit', as: 'edit_submission'
  patch '/submissions/:id' => 'submission#show'
  delete '/submissions/:id' => 'submission#destroy'

  # Teachers
  get '/courses/:course_id/teachers' => 'teachers#index', as: 'teachers'
  get '/courses/:course_id/teachers/:id' => 'teachers#show', as: 'teacher'
  get '/teachers/new' => 'teachers#new', as: 'new_teacher'
  post '/teachers/new' => 'teachers#create'
  get '/teachers/:id/edit' => 'teachers#edit', as: 'edit_teacher'
  patch '/teachers/:id' => 'teachers#update'



end
