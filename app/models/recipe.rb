class Recipe < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :type

  has_many :ingr_recs
  has_many :recipes, through: :ingr_recs
end
