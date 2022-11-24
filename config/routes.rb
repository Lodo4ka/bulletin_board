Rails.application.routes.draw do
  # get 'sessions/create'
  # get 'sessions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'foo', to: 'web/auth#callback', as: :foo_request
  # Defines the root path route ("/")
  # root "articles#index"
  # get 'auth/:provider/callback', to: 'sessions#create'
  # get '/login', to: 'sessions#new'
  scope module: :web do
    post 'auth/:provider', to: 'auth#request', as: :auth_request
    get 'auth/:provider/callback', to: 'auth#callback', as: :auth_callback

  end
  root 'welcome#index'
end
