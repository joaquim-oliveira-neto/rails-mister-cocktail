Rails.application.routes.draw do
  get 'doses/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create]  do
    resources :doses, only: [:new, :create]
  end
  delete "doses/:id", to: "doses#destroy", as: :dose # or resources :doses, only: :destroy

end
