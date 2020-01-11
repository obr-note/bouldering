source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'
gem 'rails', '~> 6.0.2'
gem "sqlite3", "~> 1.4" #データベース
#gem "pg"
gem 'puma', '~> 4.1' #Webサーバー、HTTPリクエストを受け取り何らかのレスポンスを返す、$rails sで起動
gem 'sass-rails', '>= 6' #CSSの拡張機能、入れ子とか使える
gem 'webpacker', '~> 4.0' #モダンなフロントエンド開発を強力にサポート、CSS,js,画像などを１つのファイルとしてまとめるためのモジュールハンドラー
gem 'turbolinks', '~> 5' #ページ遷移をAjaxに置き換え、JavaScriptやCSSのパースを省略することで高速化するgem
gem 'jbuilder', '~> 2.7' #JSON作成を簡単にしてくれる。不要？
# gem 'redis', '~> 4.0'
gem 'bcrypt', '~> 3.1.7' #has_secure_passwordメソッド使用
# gem 'image_processing', '~> 1.2'
gem 'bootsnap', '>= 1.4.2', require: false #require: falseは、Railsアプリ本体ではそのgemは呼ばれない、スクリプトの方では手動でrequireすればよい
gem "slim-rails" #slimの導入
gem "html2slim" #erbファイルを一発でslimに変換
gem "devise" #ログイン機能を簡単に実装しセキュリティも強化する

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] #デバック機能を追加
end

group :development do
  gem 'web-console', '>= 3.3.0' #デバック機能を追加、変数やパラメータを見れる
  gem 'listen', '>= 3.0.5', '< 3.2' #?
  gem 'spring' #高速化
  gem 'spring-watcher-listen', '~> 2.0.0' #springのファイルシステムの変更検知方法をpollingからlistenに変更してくれる
end

group :test do
  gem 'capybara', '>= 2.15' #UIテストのrubyフレームワーク
  gem 'selenium-webdriver' #テストツール
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] #タイムゾーン（時刻）を扱うライブラリ

#参考サイト https://suin.io/536
#参考サイト https://qiita.com/kkenya/items/e9eba0021b1cf5efca2b