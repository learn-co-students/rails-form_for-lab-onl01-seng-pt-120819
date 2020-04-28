Rails.application.routes.draw do
  # get 'students/index,'

  # get 'students/new,'

  # get 'students/show,'

  # get 'students/create,'

  # get 'students/edit,'

  # get 'students/update'

  # get 'school_class/index,'

  # get 'school_class/new,'

  # get 'school_class/show,'

  # get 'school_class/create,'

  # get 'school_class/edit,'

  # get 'school_class/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :show, :create, :edit, :update]
  resources :school_classes, only: [:index, :new, :show, :create, :edit, :update]
end
