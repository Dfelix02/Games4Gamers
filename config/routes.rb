Rails.application.routes.draw do
  
  resources :tests, only: [:index, :show]
  resources :testcores, only: [:index]
  resources :words


  get "/login", to: "users#login", as: "login"
  post "/login_form", to: "users#handle_login"
  delete "/logout", to: "users#logout", as: "logout"




  get "/profile", to: "users#profile", as: "profile"
  get "/profile/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"





  
  get "/users", to: "users#index", as: "users" 
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user" 
  delete 'users/:id', to: 'users#destroy', as: "user_delete"

end
