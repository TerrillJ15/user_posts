Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'static_pages#index'

  # Users Controller
  post '/users', to: 'users#create'
  get '/users', to: 'users#get'

  # Posts Controller
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#get'
end
