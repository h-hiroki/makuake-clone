class Course < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :supporters
  has_many :users, through: :supporters

  belongs_to :project, optional: true

  validates :name,        presence: true,      length: { maximum: 40 }
  validates :body,        presence: true,      length: { maximum: 200 }
  validates :price,       presence: true
  validates :image,       presence: true
  validates :stock,       presence: true
  validates :delivery,    presence: true

end
