class Supporter < ApplicationRecord
  belongs_to :course
  belongs_to :user

  validates :name, presence: true
  validates :gender, presence: true
  validates :birthday, presence: true ,        length: { maximum: 10 }
  validates :mobile, presence: true,          length: { maximum: 11 }
  validates :postal_code, presence: true,    length: { maximum: 7}
  validates :region, presence: true
  validates :city, presence: true
  validates :block, presence: true
  validates :building, presence: true

end
