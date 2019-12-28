Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show, :new, :create, :edit, :update] # call the db table 

  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update] # call the db table
end
