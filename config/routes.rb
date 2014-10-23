# http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'toy/add'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'registrations#new'

  resources :cats do
    resources :toys, only: [:index, :show, :new, :create, :destroy]
  end

  get  "/register", to: "registrations#new"
  post "/register", to: "registrations#create"

  post   "/login",  to: "login#create"
  delete "/logout", to: "login#destroy"

  # API Routes
  namespace :api do
    namespace :v1 do
      resources :cats, only: [:index, :show]
    end
  end
end
