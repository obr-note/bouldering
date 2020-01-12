Rails.application.routes.draw do
  devise_for :users #ユーザ登録とログイン
  root "home#index" #トップページ

end
