Rails.application.routes.draw do
  devise_for :users, defaults: { format: 'json' },
  controllers: {
      registrations: 'users/registrations'
  }
  namespace :api, defaults: { format: 'json' } do
      post :auth, to: 'authentication#create'
      get  '/auth' => 'authentication#fetch'
      resources :users
      resources :books
  end
  namespace :v2 do
      # Things yet to come
  end
end