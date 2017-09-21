class Photo < ActiveRecord::Base
   belongs_to :score
   mount_uploader :photo, PhotoUploader
end
