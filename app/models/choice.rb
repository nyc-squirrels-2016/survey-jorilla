class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :answers
  validates :question_id, :choice_text, presence: true
end
