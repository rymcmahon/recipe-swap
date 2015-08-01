class AddForeignKeyAgain < ActiveRecord::Migration
  def change

  	add_foreign_key :comments, :recipes, on_update: :cascade
  	add_foreign_key :recipes, :users, on_update: :cascade
  
  end
end
