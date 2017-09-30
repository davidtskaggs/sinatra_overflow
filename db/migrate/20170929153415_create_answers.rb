class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content, null: false
      t.string :author_id, null: false
      t.string :question_id, null: false

      t.timestamps
    end
  end
end
