class Event < ActiveRecord::Base
  belongs_to :status
  belongs_to :place

  # 空_NG
  validates_presence_of :times, :name, :capacity, :summary
  # 数字意外_NG
  validates_numericality_of :times, :capacity
  # 入力数の範囲設定：範囲外_NG
  validates_length_of :times, :within => 1..100
  # 既に設定済_NG
  validates_uniqueness_of :times
  
end
