Rails.application.routes.draw do
  # code in silo -> one feature at a time
  root to: 'gardens#index'
  resources :gardens, only: :show do
    # we need it nested because we need the garden id to create a new plant
    resources :plants, only: :create
  end
  resources :plants, only: :destroy
end
