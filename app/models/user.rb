class User < ApplicationRecord
  has_secure_password
  validates :username,:email,presence: true
  validates :email,format: {with: URI::MailTo::EMAIL_REGEXP} 
  validates :username,uniqueness: true
  has_many :comments
end
