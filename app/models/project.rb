class Project < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :user
  has_many :courses
  accepts_nested_attributes_for :courses

  validates :title,       presence: true,      length: { maximum: 50 }
  validates :target_fig,  presence: true,      length: { maximum: 7 }
  validates :end_time,    presence: true
  validates :image,       presence: true
  validates :body,        presence: true

  def clear_rate
    self.courses.map{|course|(course.supporters.count)*(course.price)}.sum/(self.target_fig.to_i).to_f*100
  end

  def sum_price
    self.courses.map{|course|(course.supporters.count)*course.price}.sum
  end


end
