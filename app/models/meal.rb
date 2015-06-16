class Meal < ActiveRecord::Base
	has_many :recipes, foreign_key: :meal_id
end
