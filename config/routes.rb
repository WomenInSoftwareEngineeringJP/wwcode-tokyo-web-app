Rails.application.routes.draw do
  devise_for :users
  root to: 'urls#index'
  resources :urls, param: :slug

  get '/:slug', to: 'urls#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
