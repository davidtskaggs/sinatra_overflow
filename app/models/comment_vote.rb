class CommentVote < ActiveRecord::Base
  validates :vote_type, :user_id, presence: true
  belongs_to :user
end
