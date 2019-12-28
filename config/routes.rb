Rails.application.routes.draw do
  root to: "home#index" #トップページ

  resources :users, only: [:new, :create] #ユーザー登録
end
