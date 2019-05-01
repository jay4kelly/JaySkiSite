Rails.application.routes.draw do
  get 'welcome/sugarloaf'
  get 'welcome/sugarbush'
  get 'welcome/sundayRiver'
  get 'welcome/newengland'
  get 'welcome/index'
resources :reviews do
  resources :comments, only: [:index, :new, :create]
end
resources :comments, only: [:show, :edit, :update, :destroy]
resources :welcome
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
end
