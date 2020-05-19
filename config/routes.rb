Rails.application.routes.draw do
  resources 'students', only: [:new, :create, :edit, :update]
  get '/students/:id', to: 'students#show'
  post 'students/new', to: 'students#create'
  patch 'students/:id', to: 'students#update'

  resources 'school_classes', only: [:new, :create, :edit, :update]
  post 'school_classes/new', to: 'school_classes#create'
  get 'school_classes/:id', to: 'school_classes#show'
  patch 'school_classes/:id', to: 'school_classes#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
