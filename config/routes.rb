Rails.application.routes.draw do
  # resources :employers
  resources :applicants do
    resources :skills, only: [:create]
  end
  resources :skills, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
