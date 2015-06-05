class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def show
		@recipe = Recipe.find(params[:id])
		@ingredients_array = Recipe.find(params[:id]).ingredients.split(',')
		@cooking_instructions_array = Recipe.find(params[:id]).cooking_instructions.split(',')
	end

	def new
		@recipe = Recipe.new
	end
	
	def create
		@recipe = Recipe.new(recipe_params)

		if @recipe.save
			redirect_to @recipe, notice: "Success! You've added a new recipe."
		else
			render 'new'
		end
	end

	def update
		@recipe = Recipe.find(params[:id])

		if @recipe.update(recipe_params)
			redirect_to @recipe
		else
			render 'edit'	
		end
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy

		redirect_to recipes_path
	end

	private
		def recipe_params
			params.require(:recipe).permit(:name, :description, :prep_time, :cook_time, :ingredients, :cooking_instructions)
		end
end

