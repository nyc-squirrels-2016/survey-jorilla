class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :choices
  has_many :answers
  validates :user_id, :title, presence: true
end
