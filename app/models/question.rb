class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :choices
  has_many :answers
  validates :survey_id, :question_text, presence: true
end
