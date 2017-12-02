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

  resources :projects, only: [:show,] do
    resources :courses, only: [:show] do
      resources :supporters, only: [:new, :create] do
        collection do
          post 'confirm'
        end
      end
    end
  end

end
