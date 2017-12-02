class Project < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :courses
  accepts_nested_attributes_for :courses

  validates :title,       presence: true,      length: { maximum: 50 }
  validates :target_fig,  presence: true,      length: { maximum: 7 }
  validates :end_time,    presence: true
  validates :image,       presence: true

end
