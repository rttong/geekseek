Finalproject::Application.routes.draw do
  
  devise_for :users

  get "home/index"

  root :to => "home#index"
  resource :organization
  resource :volunteer
  resources :projects do
    get :browse, on: :collection
  end
  resources :interests

end
