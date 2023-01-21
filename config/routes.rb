Rails.application.routes.draw do
  devise_for :users, defaults: { format: 'json' },
  controllers: {
      registrations: 'users/registrations'
  }
  namespace :api, defaults: { format: 'json' } do
      resources :users
      post :auth, to: 'authentication#create'
      get  '/auth' => 'authentication#fetch'
  end
  namespace :v2 do
      # Things yet to come
  end
end