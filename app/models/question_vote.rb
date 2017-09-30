class QuestionVote < ActiveRecord::Base
  validates :voter_id, :question_id, :vote_type, presence: true
  belongs_to :user
  belongs_to :question
end
