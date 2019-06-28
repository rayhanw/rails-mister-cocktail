Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/tagged', to: "cocktails#tagged", as: :tagged
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resource :doses, only: [:create]
    resource :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end
