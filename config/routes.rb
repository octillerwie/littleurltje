Rails.application.routes.draw do
  get 'links/index'
  get 'links/show'

  root 'links#index'
  resources :links

  get'/:short_url', to: 'links#send_to_url'
end

