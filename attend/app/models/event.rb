class Event < ActiveRecord::Base

  # 空_NG
  validates_presence_of :no, :name, :capacity, :summary, :message => 'が未入力です。'
  # 数字意外_NG
  validates_numericality_of :no, :capacity, :message => 'が数字以外です。'
  # 入力数の範囲設定：範囲外_NG
  validates_length_of :no, :within => 1..100, :message => 'は範囲を超えています。'
  # 既に設定済_NG
  validates_uniqueness_of :no, :message => 'は設定済みです。'

  class << self
    HUMANIZED_ATTRIBUTE_KEY_NAMES = {
      "no" => "回数",
      "name" => "勉強会の名前（キャッチ）",
      "capacity" => "定員",
      "summary" => "概要",
    }
  end

end
