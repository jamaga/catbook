Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'cats#index'
  get 'logins' => 'logins#show_form', as: :logins
  post 'logins' => 'logins#login', as: :login

  resources :cats, only: [:index, :show, :edit, :update]
  resources :registrations, only: [:new, :create]
  
end
