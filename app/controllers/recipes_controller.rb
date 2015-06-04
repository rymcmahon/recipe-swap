class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def show
		@recipe = Recipe.find(params[:id])
		@ingredients_array = Recipe.find(params[:id]).ingredients.split(',')
		@cooking_instructions_array = Recipe.find(params[:id]).cooking_instructions.split(',')
	end

	def new
		
	end
	
	def create
		@recipe = Recipe.new(recipe_params)

		@recipe.save
		redirect_to @recipe
	end

	private
		def recipe_params
			params.require(:recipe).permit(:name, :description, :prep_time, :cook_time, :ingredients, :cooking_instructions)
		end
end

