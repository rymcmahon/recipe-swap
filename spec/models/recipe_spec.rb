require 'rails_helper'

describe Recipe do
	it "is valid with a name, description, cooking instructions, 
	ingredients, prep time, and cook time" do
		recipe = Recipe.new(
			name: "Fish Tacos",
			description: "Fish tacos are a tasty light meal during the summer",
			cooking_instructions: ["Cut fish into one inch strips", ["season with salt", "pepper", "and chili powder"], "lightly flour fish strips", "fry in 350 degree oil", "add cooked fish to tacos with all the fixings"],
			ingredients: ["mild white fish like cod", "flour tortillas", "good jarred salsa", "avocado slices", "shredded jack cheese", "chopped lettuce"],
			prep_time: "20 minutes",
			cook_time: "15 minutes"
			)
		expect(recipe).to be_valid
	end

	it "is invalid without a name" do
		recipe = Recipe.new(name: nil)
		recipe.valid?
		expect(recipe.errors[:name]).to include("can't be blank")
	end

	it "is invalid without a description" do
		recipe = Recipe.new(description: nil)
		recipe.valid?
		expect(recipe.errors[:description]).to include("can't be blank")
	end

	it "is invalid without cooking instructions" do
		recipe = Recipe.new(cooking_instructions: nil)
		recipe.valid?
		expect(recipe.errors[:cooking_instructions]).to include("can't be blank")
	end

	it "is invalid without ingredients" do
		recipe = Recipe.new(ingredients: nil)
		recipe.valid?
		expect(recipe.errors[:ingredients]).to include("can't be blank")
	end

	it "is invalid without a prep time" do
		recipe = Recipe.new(prep_time: nil)
		recipe.valid?
		expect(recipe.errors[:prep_time]).to include("can't be blank")
	end

	it "is invalid without a cook time" do
		recipe = Recipe.new(cook_time: nil)
		recipe.valid?
		expect(recipe.errors[:cook_time]).to include("can't be blank")
	end
end