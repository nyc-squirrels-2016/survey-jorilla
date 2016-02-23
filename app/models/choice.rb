class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :answers
  validates :question_id, :survey_id, :choice_text, presence: true
end
