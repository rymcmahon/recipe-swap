class RecipesController < ApplicationController
	before_action :authenticate_user!, :except => [:index, :show]

	def index
		@recipes = Recipe.all
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def show
		@recipe = Recipe.find(params[:id])
		@ingredients_array = Recipe.find(params[:id]).ingredients.split(';')
		@cooking_instructions_array = Recipe.find(params[:id]).cooking_instructions.split(';')
		@meals = Meal.all
		@recipe_user = Recipe.find(params[:id]).user_id
		@recipe_meal = Recipe.find(params[:id]).meal_id
	end

	def new
		@recipe = Recipe.new
	end
	
	def create
		@recipe = Recipe.new(recipe_params)
		@recipe.user_id = current_user.id

		if @recipe.save
			redirect_to @recipe, notice: "Success! You've added a new recipe."
		else
			render 'new'
		end
	end

	def update
		@recipe = Recipe.find(params[:id])
		@recipe.image.destroy 
		@recipe.image.clear

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
			params.require(:recipe).permit(:name, :description, :meal_id, :prep_time, :cook_time, :ingredients, :cooking_instructions, :image)
		end
end

