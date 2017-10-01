class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :question
  validates :content, presence: true
  validates :user_id, presence: true
  validates :question_id, presence: true
end
