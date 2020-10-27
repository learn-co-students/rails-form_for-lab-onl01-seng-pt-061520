Rails.application.routes.draw do
  resources :students, except: [:destroy]
  resources :school_classes, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
