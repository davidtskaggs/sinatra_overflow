class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
