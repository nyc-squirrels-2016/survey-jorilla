class User < ActiveRecord::Base
  has_many :surveys
  has_many :questions
  has_many :choices
  has_many :answers
  validates :username, presence: true
  has_secure_password
end
