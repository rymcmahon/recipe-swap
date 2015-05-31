class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :cooking_instructions
      t.string :description
      t.string :picture
      t.string :prep_time
      t.string :cook_time
      t.string :people_served
      t.string :comments

      t.timestamps null: false
    end
  end
end
