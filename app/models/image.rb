class Image < ActiveRecord::Base
  mount_uploader :thumb, FullsizeUploader
  mount_uploader :fullsize, FullsizeUploader
end
