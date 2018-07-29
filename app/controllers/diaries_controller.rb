class DiariesController < ApplicationController
  # Add index action
  def index
    logger.debug 'aaa'
    @diaries = Diary.all
  end
end

