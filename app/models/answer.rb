class Answer < ActiveRecord::Base
  # Remember to create a migration!
  validates :content, presence: true
  validates :author_id, presence: true
  validates :question_id, presence: true
end
