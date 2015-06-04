class ChangeRecipes < ActiveRecord::Migration
  def change
  	change_table :recipes do |t|
  		t.change :ingredients, :text
  		t.change :cooking_instructions, :text
  	end
  end
end
