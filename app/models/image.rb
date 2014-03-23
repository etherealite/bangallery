class Image < ActiveRecord::Base
  attr_accessible :title, :description, :thumb, :fullsize, :weight
  after_initialize :init

  mount_uploader :thumb, ThumbUploader
  mount_uploader :fullsize, FullsizeUploader

  validates :weight, :numericality => { :only_integer => true }

  def init
      self.weight ||= 0
  end

end
