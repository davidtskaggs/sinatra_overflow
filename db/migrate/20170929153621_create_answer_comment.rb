class CreateAnswerComment < ActiveRecord::Migration
  def change
    create_table :answer_comment do |t|
      t.string :content, null: false
      t.string :author_id, null: false
      t.string :answer_id, null: false
      t.string :comment_votes_id, null: false

      t.timestamps
    end
  end
end
