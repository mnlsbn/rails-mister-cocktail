Rails.application.routes.draw do
  resources :cocktails, only: [:index, :new, :create, :show, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]

  root to: "cocktails#index"

  mount Attachinary::Engine => "/attachinary"
end
