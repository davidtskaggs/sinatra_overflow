class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes do |t|
      t.string :vote_type, null: false
      t.string :user_id, null: false

      t.timestamps
    end
  end
end
