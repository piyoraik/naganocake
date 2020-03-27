Rails.application.routes.draw do

  devise_for :end_users,
  path: "end_user",
  controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations'
  }

  root 'public/items#top'

  scope module: :public do
    resources :end_users, only: [:show, :edit, :update]
    get '/destroy_show' => 'end_uesrs#destroy_show'
  end

  devise_for :admins,
  path: "admin",
  controllers: {
    sessions: 'admin/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
