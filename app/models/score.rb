class Score < ApplicationRecord
  has_many :photos
  belongs_to :challengeboard
  mount_uploader :photo, PhotoUploader
end
