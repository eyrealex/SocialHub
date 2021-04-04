Rails.application.routes.draw do
  devise_for :accounts

  get "u/:username" => "home#profile", as: :profile

  devise_scope :account do
    get '/accounts/sign_out' => 'devise/sessions#destroy'
  end

resources :communities do
  resources :posts
end

resources :tweets

resources :subscriptions
resources :comments, only: [:create], defaults: { format: 'js' }

get 'articles.rss', to: 'articles#index', :format => 'rss'


#set the home#index as the landing page for the website
root 'home#index'
get 'home/spacex'

end
