class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey
  belongs_to :question
  belongs_to :choice
  validates :user_id, :survey_id, :question_id, :choice_id, presence: true
end
