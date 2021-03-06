Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :rooms, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end
  get '*unmatched_route', to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
