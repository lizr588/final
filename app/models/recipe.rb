class Recipe < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  belongs_to :type
end
