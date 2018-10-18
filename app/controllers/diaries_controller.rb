class DiariesController < ApplicationController

  # Add before_action
  before_action :set_diary, only: [:show, :edit, :update, :destroy]

  # Add index action
  def index
    @diaries = Diary.all
  end

  # Add new action
  def new
    @diary = Diary.new
  end

  # Add show action
  def show
  end

  # Add create action
  def create
    # 下部で定義している「diary_params」を呼び出し、「_form.html.erb」で入力されたパラメータをハッシュ値として受け取る
    # 例：内部的にはparams[diary][title]といった２次元配列で持つ
    @diary = Diary.new(diary_params)

    # 「respond_to」は、アクセスされたURLの末尾によって処理を振り分ける際に使用する。今回は以下の通り。
    # format.html　→　htmlの場合
    # format.json　→　jsonの場合
    respond_to do |format|
      if @diary.save
        # 保存に成功したときの処理
        format.html { redirect_to @diary, notice: 'Diary was successfully created.' }
        format.json { render :show, status: :created, location: @diary }
      else
        # 保存に失敗したときの処理
        format.html { rebnder :new }
        format.json { render json: @diary.errors, status: :unprocessable_entry }
      end
    end
  end

  # Add destroy action
  def destroy
    @diary.destroy

    # 「@diary」は暗黙的にindexへ遷移させる事を指す
    # noticeは、indexビューのnotice変数にメッセージを表示させるためのもの
    redirect_to( @diary, notice: '削除しました。')
  end

  # Add edit action
  def edit
  end

  #=========== Private Method ===========
  # Add set method
  private def set_diary
    @diary = Diary.find(params[:id])
  end

  # Add params method
  def diary_params
    # 以下のハッシュ値を返す定義
    # {
    #   'title': 'XXXX'
    #   'body': 'XXXX'
    # }
    params.require(:diary).permit(:title, :body)
  end

end
