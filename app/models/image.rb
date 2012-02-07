class Image < ActiveRecord::Base
  attr_accessible :title, :description, :thumb, :fullsize
  mount_uploader :thumb, ThumbUploader
  mount_uploader :fullsize, FullsizeUploader
end
