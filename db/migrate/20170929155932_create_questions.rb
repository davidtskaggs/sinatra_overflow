class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.string :title , presence: true
  		t.string :content, presence: true
  		t.references :author, foreign_key: true

  		t.timestamps
  end
end



