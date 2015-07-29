class MealsController < ApplicationController

	def recipes
    @meal = Meal.find(params[:id])
    @recipes = @meal.recipes
  end

end
