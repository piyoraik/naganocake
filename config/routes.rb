Rails.application.routes.draw do

  devise_for :end_users,
  path: "end_user",
  controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations'
  }

  root 'public/items#top'

  scope module: :public do
    resources :end_users, only: [:index, :update]
    get '/end_users/edit' => 'end_users#edit'
    get '/destroy_show' => 'end_uesrs#destroy_show'
  end

  devise_for :admins,
  path: "admin",
  controllers: {
    sessions: 'admin/sessions'
  }

  namespace :admin do
    get '/' => 'top#top'
    resources :items, :except => :destroy
    resources :endusers, :except => :destroy
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
