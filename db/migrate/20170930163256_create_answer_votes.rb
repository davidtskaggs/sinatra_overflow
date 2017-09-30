class CreateAnswerVotes < ActiveRecord::Migration
  def change
    create_table :answer_votes do |t|
      t.string :user_id, null: false
      t.string :answer_id, null: false
      t.string :vote_type, null: false

      t.timestamps
    end
  end
end
