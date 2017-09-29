class CreateAnswerComment < ActiveRecord::Migration
  def change
    create_table :answer_comment do |t|
      t.string :content
      t.string :author_id
      t.string :answer_id
      t.string :comment_votes_id

      t.timestamps
    end
  end
end
