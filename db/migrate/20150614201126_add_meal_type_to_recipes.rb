class AddMealTypeToRecipes < ActiveRecord::Migration
  def change
  	add_column :recipes, :meal_type, :integer
  end
end
