Rails.application.routes.draw do
  devise_scope :user do
    namespace :devise, as: :sign, path: '/sign' do
      get    'up',  to: 'registrations#new'
      post   'up',  to: 'registrations#create'
      get    'in',  to: 'sessions#new'
      post   'in',  to: 'sessions#create'
      delete 'out', to: 'sessions#destroy'
    end
  end

  root 'home#index'
end
