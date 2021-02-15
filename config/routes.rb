Rails.application.routes.draw do
  devise_for :accounts
  
  devise_scope :account do
    get '/accounts/sign_out' => 'devise/sessions#destroy'
  end

resources :communities
get 'home/index'

#set the home#index as the landing page for the website
root 'home#index'

end
