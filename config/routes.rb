Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Mod comment out
  # get "/", to: "users#index"

  # Add new routing
  # 「views/<コントローラ名>/<アクション名>.html.erb」となっている場合は、toメソッドを省略できる
  # Mod Comment out
  # get "/users/new" #, to "users#new"

  # deviseで使用するrootディレクトリ
  root 'diaries#index'

  #get '/', to: "diaries#index"

  # Add diary routing
  resources :diaries
end
