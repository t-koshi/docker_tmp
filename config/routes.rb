Rails.application.routes.draw do
  resources :microposts
  get 'me/dashboard'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  namespace :mypage do
    get 'dashboard'
  end  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
