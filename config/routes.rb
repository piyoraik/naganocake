Rails.application.routes.draw do

  devise_for :end_users,
  path: "end_user",
  controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations'
  }

  root 'public/items#top'

  get '/items' => 'public/items#index'
  get '/items/:id' => 'public/items#show'

  get '/cart_items' => 'public/cart_items#index'
  patch '/cart_items/:id' => 'public/cart_items#update'
  delete '/cart_items/:id' => 'public/cart_items#destroy'
  delete '/cart_items/all' => 'public/cart_items#all_destroy'
  post '/cart_items' => 'public/cart_items#create'

  scope module: :public do
    get '/end_users/edit' => 'end_users#edit'
    get '/end_users/destroy_show' => 'end_users#destroy_show'
    patch '/end_users/destroy' => 'end_users#update_destroy'
    resources :end_users, only: [:index, :update]
  end

  devise_for :admins,
  path: "admin",
  controllers: {
    sessions: 'admin/sessions'
  }

  namespace :admin do
    get '/' => 'top#top'
    resources :items, :except => :delete
    resources :end_users, :except => :delete
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
