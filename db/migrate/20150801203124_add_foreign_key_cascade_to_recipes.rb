class AddForeignKeyCascadeToRecipes < ActiveRecord::Migration
  def change
  	remove_foreign_key :recipes, name: :fk_rails_9606fce865
  end
end
