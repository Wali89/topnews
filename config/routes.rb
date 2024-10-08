Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'auth/login', to: 'auth#login'
      delete 'auth/logout', to: 'auth#logout'
      resources :user_stories, only: [:index, :create, :destroy]
    end
  end
end