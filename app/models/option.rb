class Option < ApplicationRecord
  belongs_to :question
  mount_uploader :image, ImageUploader

  default_scope { order(created_at: :asc) }
end
