class AnswerComment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :answer
  belongs_to :comment_votes
  validates :content, presence: true
  validates :author_id, presence: true
  validates :answer_id, presence: true
  validates :comment_votes_id
end
