class QuestionComment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :question
  belongs_to :comment_votes
  validates :content, presence: true
  validates :user_id, presence: true
  validates :question_id, presence: true
  validates :comment_votes_id
end
