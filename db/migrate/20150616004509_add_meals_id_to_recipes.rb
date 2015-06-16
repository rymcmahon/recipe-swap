class AddMealsIdToRecipes < ActiveRecord::Migration
  def change
  	add_column :recipes, :meals_id, :integer
  end
end
