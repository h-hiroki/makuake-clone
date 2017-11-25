Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:show, :edit, :update] do
    member do
      get 'password'
    end
  end

  resources :projects do
  end


end
