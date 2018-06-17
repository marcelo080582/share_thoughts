Rails.application.routes.draw do
  resources :thoughts
  devise_for :users

  root to: 'thoughts#index'
  post '/thought/:thougth_id/observation/', to: 'observations#create', as: 'create_observation'
  get 'react/:reactable_type/:reactable_id/:reaction', to: 'reacts#react'
  get 'react-delete/:reactable_type/:reactable_id', to: 'reacts#remove_reaction'
end
