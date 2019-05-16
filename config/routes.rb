Rails.application.routes.draw do
  devise_for :users
  resources :posts , :only => [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :welcome, :only => [:index]
  resources :messages, :only => [:index, :create, :destroy]
  root "welcome#index"
  resources :users, :only => [:show, :index, :edit, :update]

  # get "/users/sign_up" => users#new
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
