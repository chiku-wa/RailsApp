class Diary < ApplicationRecord
  # ----- Validateによる入力チェックを追加
  # titleカラムを必須入力とする
  validates :title, presence: true

  # bodyカラムを必須入力とする
  validates :body, presence: true
end
