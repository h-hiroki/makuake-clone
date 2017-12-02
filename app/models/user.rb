class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :image, ImageUploader

  has_many :projects
  has_many :supporters
  has_many :courses, through: :supporters

  validates :name, presence: true
  validates :email, presence: true

end
