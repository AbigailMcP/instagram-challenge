Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks',
                                       registrations: 'registrations'}
  resources :posts do
    resources :comments
  end
  root 'posts#index'
end
