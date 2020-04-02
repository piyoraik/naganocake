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
    resources :items, :except => :destroy
    resources :end_users, :except => :destroy
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
