class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title,use: :slugged
  has_one_attached :photo
  validates :title,:body,presence: true
  has_many :comments
end
