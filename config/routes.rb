require 'sidekiq/web'

Rails.application.routes.draw do
  
	mount Sidekiq::Web => '/sidekiq'
  resources :shipments, except: [:new, :edit]
  
end
