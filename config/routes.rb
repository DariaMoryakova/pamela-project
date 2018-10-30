Rails.application.routes.draw do
  devise_for :users

  root 'login#index', as: 'login'
  #Students routes: 

  get 'students/create'
  get 'students/new', as: "new_student"
  get 'students/show'
  get 'students/:id', to: 'students#show' , as: 'student'
  get 'students/hello'
  get 'students/update', to: 'students#update'
  get 'students/:id', to: 'students#edit', as: 'students'
  
  post "/students/create", to: "students#create"
  
  delete "/students/:id" , to: "students#destroy"
  resources :students

  #Instructors routes:

  get 'instructors/index'
  get 'instructors/create'
  get 'instructors/new', as: "new_instructor"
  get 'instructors/show'
  get 'instructors/:id', to: 'instructors#show' , as: 'instructor'
  get 'instructors/hello'
  # get 'instructors/:id', to: 'instructors#edit', as: 'instructor'

  post "/instructors/create", to: "instructors#create"
  delete "/instructors/:id" , to: "instructors#destroy"
  resources :instructors

 

  #Cohorts routes:

  get 'cohorts/index'
  get 'cohorts/create'
  get 'cohorts/new', as: "new_cohort"
  get 'cohorts/show'
  get 'cohorts/:id', to: 'cohorts#show' , as: 'cohort'
  get 'cohorts/hello'

  post "/cohorts/create", to: "cohorts#create"
  resources :cohorts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login", to: "login#index"
  #post 
 
end
