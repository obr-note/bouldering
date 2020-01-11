Rails.application.routes.draw do
  devise_for :users
  root "home#index" #トップページ

  resources :users, only: [:new, :create] #ユーザー登録
  resources :sessions, only: [:new, :create, :destroy] #ユーザーログイン
end
