class Text < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :watched_texts, dependent: :destroy
end
