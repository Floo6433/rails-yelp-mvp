Rails.application.routes.draw do
  resources :restaurants do   # , only: [:index, :show, :new, :create]
    resources :reviews, only: [ :create ]
  end
  resources :reviews, only: [:index, :show, :new, :create]
end
