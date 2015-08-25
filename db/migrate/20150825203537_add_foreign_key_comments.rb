class AddForeignKeyComments < ActiveRecord::Migration
  def change
  	remove_foreign_key :comments, :users
  	add_foreign_key :comments, :users, on_update: :cascade
  end
end
