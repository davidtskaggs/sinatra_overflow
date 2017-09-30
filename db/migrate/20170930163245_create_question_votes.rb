class CreateQuestionVotes < ActiveRecord::Migration
  def change
    create_table :question_votes do |t|
      t.string :voter_id, null: false
      t.string :question_id, null: false
      t.string :vote_type, null: false

      t.timestamps
    end
  end
end
