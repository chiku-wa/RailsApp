class DiariesController < ApplicationController

  # Add before_action
  before_action :set_diary, only: [:show, :edit, :update, :destroy]

  # Add index action
  def index
    @diaries = Diary.all
  end

  # Add show action
  def show
  end

  # Add destroy action
  def destroy
    @diary.destroy

    # 「@diary」は暗黙的にindexへ遷移させる事を指す
    # noticeは、indexビューのnotice変数にメッセージを表示させるためのもの
    redirect_to( @diary, notice: '削除しました。')
  end

  # Add set method
  private def set_diary
    @diary = Diary.find(params[:id])
  end

end
