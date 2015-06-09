class Recipe < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	
	validates :name, presence: true
	validates :description, presence: true
	validates :ingredients, presence: true
	validates :cooking_instructions, presence: true
	validates :prep_time, presence: true
	validates :cook_time, presence: true

end
