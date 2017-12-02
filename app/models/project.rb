class Project < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :course
end
