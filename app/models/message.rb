class Message < ActiveRecord::Base
  # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20, :too_long => "最大20字以内" } , presence: true
  # 内容は必須入力かつ2文字以上30文字以下
  validates :body , length: { minimum: 2, maximum: 30, :too_long => "最大30字以内" } , presence: true
  #年齢は0歳以上の整数のみで３桁以内
  validates :age , :numericality => { :only_integer => true,:greater_than_or_equal_to  => 0, :message => "半角数字のみ入力できます" }, length: { maximum: 3, :too_long => "3桁以内" } ,presence: true
end
