Rails.application.routes.draw do
  get 'welcome/sugarloaf'
  get 'welcome/mountSunapee'
  get 'welcome/patsPeak'
  get 'welcome/sugarbush'
  get 'welcome/blueHillsSkiArea'
  get 'welcome/mountAbram'
  get 'welcome/wachusettMountain'
  get 'welcome/sundayRiver'
  get 'welcome/berkshireEast'
  get 'welcome/newengland'
  get 'welcome/index'
resources :reviews

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
end
