Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    get '/set_locale/:new_locale', to: 'locale#update', as: :set_locale

    devise_for :users
    root to: 'urls#index'
    resources :urls, param: :slug

    get '/:slug', to: 'urls#show'
  end
end
