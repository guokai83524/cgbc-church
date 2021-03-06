Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'api' do
    namespace :v1 do
      resources :users,  only: [:index, :show]
      resources :offers, only: [:new, :index, :show, :create, :update]
    end
  end
end
