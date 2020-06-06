class Page < ApplicationRecord
  has_one_attached :photo
  validates :name,uniqueness: true
  validates :name,:title,:body,presence: true

end
