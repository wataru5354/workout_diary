Rails.application.routes.draw do
  devise_for :users
  root to: "diaries#index"
  resources :diaries do
    collection do
      get 'search'
    end
  end

  resources :users, only: :show do
    resources :calendars, only: [:index,:show]
  end
end