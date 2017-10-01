class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.string :title , presence: true
  		t.string :content, presence: true
  		t.references :user, foreign_key: true

  		t.timestamps
    end
  end
end



