class RenameMealsIdInRecipes < ActiveRecord::Migration
  def change
  	rename_column :recipes, :meals_id, :meal_id
  end
end
