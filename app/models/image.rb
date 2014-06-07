class Image < ActiveRecord::Base
  mount_uploader :file, ImageUploader
  attr_accessible :title, :description, :weight, :file
  after_initialize :init

  validates :weight, :numericality => { :only_integer => true }
  validates_presence_of :file

  def init
      self.weight ||= 0
  end

end
