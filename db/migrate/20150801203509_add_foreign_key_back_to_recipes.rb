class AddForeignKeyBackToRecipes < ActiveRecord::Migration
  def change
  	 add_foreign_key :recipes, :users, on_delete: :cascade
  end
end
