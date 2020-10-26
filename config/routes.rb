Rails.application.routes.draw do

  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]
  resources :students, only: [:index, :show, :new, :create, :edit, :update]

  get 'students/new'

  get 'students/create'

  get 'students/show'

  get 'students/edit'

  get 'students/update'

  get 'school_classes/new'

  get 'school_classes/create'

  get 'school_classes/show'

  get 'school_classes/edit'

  get 'school_classes/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
