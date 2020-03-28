Rails.application.routes.draw do
  resources :chats
  # namespace :api do 
  # 	namespace :v1 do
  		get  'virus/index' 
  # 	end
  # end
  root 'chats#index'
	require 'sidekiq/web'
	mount Sidekiq::Web => '/sidekiq'


	scope '/contributors' do
		post :donate, to: 'contributors#donate', as: 'contributor_donate'
		get :success, to: 'contributors#success', as: 'contributor_success'
		get :cancel, to: 'contributors#cancel', as: 'contributor_cancel'
	end
	
	#root to: "contributors#index"
	devise_for :contributors
	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
