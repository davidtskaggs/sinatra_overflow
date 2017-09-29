class CreateQuestionComment < ActiveRecord::Migration
  def change
    create_table :question_comment do |t|
      t.string :content
      t.string :author_id
      t.string :question_id
      t.string :comment_votes_id

      t.timestamps
    end
  end
end
