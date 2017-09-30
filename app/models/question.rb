class Question < ActiveRecord::Base
  validates :content, :title, presence: true
  belongs_to :user
end
