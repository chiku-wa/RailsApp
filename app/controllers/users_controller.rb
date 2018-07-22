class UsersController < ApplicationController
  def index
    # Add
    @hello = 'HELLO!WORLD!'

    # Mod
    # 「render template: 'users/index'」の省略形
    # 「app/views/<コントローラー名>/<ビュー名>.html/erb」でファイルが存在している場合は、「render template」を省略できる
    'users/index'
  end
end
