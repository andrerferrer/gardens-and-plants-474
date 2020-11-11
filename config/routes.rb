Rails.application.routes.draw do
  # code in silo -> one feature at a time
  root to: 'gardens#index'
  resources :gardens, only: :show
  resources :plants, only: :destroy
end
