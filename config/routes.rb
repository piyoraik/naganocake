Rails.application.routes.draw do
  devise_for :end_users, controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations'
  }
  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
