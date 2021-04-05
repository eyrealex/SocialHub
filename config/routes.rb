Rails.application.routes.draw do
  resources :feeds
  devise_for :accounts

  get "u/:username" => "home#profile", as: :profile

  devise_scope :account do
    get '/accounts/sign_out' => 'devise/sessions#destroy'
  end

resources :communities do
  resources :posts
  collection do
    get :search # creates a new path for search input
  end
end

resources :tweets
get 'home/spacex'

resources :subscriptions
resources :comments, only: [:create], defaults: { format: 'js' }

get 'articles.rss', to: 'articles#index', :format => 'rss'


#set the home#index as the landing page for the website
#root 'home#index'
root 'feeds#index'


end
