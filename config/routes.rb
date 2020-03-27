Rails.application.routes.draw do
  devise_for :end_users,
  path: "end_user",
  controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations'
  }
  devise_for :admins,
  path: "admin",
  controllers: {
    sessions: 'admin/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
