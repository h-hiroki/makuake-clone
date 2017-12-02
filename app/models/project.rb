class Project < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :courses
  accepts_nested_attributes_for :courses
end
