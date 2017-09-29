class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string :email, null: false, unique: true
    t.string :password_hash, null: false

    t.timestamps
    end
  end
end
