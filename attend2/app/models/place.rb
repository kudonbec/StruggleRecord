class Place < ActiveRecord::Base
  has_many :events
  
  # KARA_NG
  validates_presence_of :name, :adress, :url
  # KITEIZUMU_NG
  validates_uniqueness_of :name, :adress, :url
  # SEIKIHYOUGEN URL's check
  validates_format_of :url, :with => /^http:\/\/[^<>]+$/

end
