Rails.application.routes.draw do
  root 'public/items#top'

  devise_for :end_users,
  path: "end_user",
  controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations'
  }

  get '/addresses' => 'public/addresses#index'
  post '/addresses' => 'public/addresses#create'
  patch '/addresses/:id' => 'public/addresses#update', as: 'address_update'
  delete '/addresses/:id' => 'public/addresses#destroy', as: 'address_destroy'
  get '/addresses/:id/edit' => 'public/addresses#edit', as: 'address_edit'

  get '/orders' => 'public/orders#index'
  get '/orders/new' => 'public/orders#new'
  post '/orders/check-show' => 'public/orders#check_show'
  get '/orders/thanks' => 'public/orders#thanks'
  post '/orders' => 'public/orders#create'
  get '/orders/:id' => 'public/orders#show', as: 'order'

  get '/items/:id' => 'public/items#show', as: 'item'
  get '/items' => 'public/items#index'

  patch '/cart_items/:id' => 'public/cart_items#update', as: 'cart_items_update'
  delete '/cart_items/all' => 'public/cart_items#all_destroy', as: 'cart_items_all_delete'
  delete '/cart_items/:id' => 'public/cart_items#destroy', as: 'cart_items_delete'
  get '/cart_items' => 'public/cart_items#index'
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
    resources :orders
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
