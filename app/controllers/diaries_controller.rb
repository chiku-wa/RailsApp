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

  # Add set method
  private def set_diary
    @diary = Diary.find(params[:id])
  end

end
