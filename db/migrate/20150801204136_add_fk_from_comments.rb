class AddFkFromComments < ActiveRecord::Migration
  def change
  	add_foreign_key :comments, :recipes, on_delete: :cascade
  end
end
