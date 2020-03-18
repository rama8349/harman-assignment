Rails.application.routes.draw do

  scope '/contributors' do
    post :donate, to: 'contributors#donate', as: 'contributor_donate'
    get :success, to: 'contributors#success', as: 'contributor_success'
    get :cancel, to: 'contributors#cancel', as: 'contributor_cancel'
  end
  
  root to: "contributors#index"
  devise_for :contributors
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
