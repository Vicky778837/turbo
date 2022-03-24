Rails.application.routes.draw do
  root 'tweets#index'
  resources :tweets
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 #post'like/:id',to: "tweets#like" as: 'like_tweet'
  # Defines the root path route ("/")
  # root "articles#index"
end
