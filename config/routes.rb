Rails.application.routes.draw do
  resources :thoughts
  devise_for :users

  root to: 'thoughts#index'
end
