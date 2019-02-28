Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/home', to: 'welcome#home'
  get '/json_sample', to: 'welcome#json_sample'
  get '/fetch_description', to: 'welcome#fetch_description'
  get '/fetch_cars', to: 'cars#fetch_cars'
  get '/fetch_users', to: 'users#fetch_users'
  get '/fetch_user_age', to: 'users#fetch_user_age'
  resources :cars
  resources :users
  resources :books
  resources :games do
    member do
      get 'enroll'
      post 'enrolled_user'
      get 'show_enrolled_user'
    end
      
  end
end
