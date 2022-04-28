Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/projects'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'projects#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
