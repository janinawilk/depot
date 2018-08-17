Rails.application.routes.draw do
  root 'store#index', as: 'store_index'
  get 'store/index'
  resources :products
end
