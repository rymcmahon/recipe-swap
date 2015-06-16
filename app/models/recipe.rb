class Recipe < ActiveRecord::Base
	has_many :comments
	belongs_to :meal
	belongs_to :user
	has_attached_file :image, styles: { small: "100x100", med: "200x200", large: "300x300" }, :default_url => "/images/:style/missing.png"
	validates_attachment :image, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }, :size => { :in => 0..3.megabytes }
	validates :name, presence: true
	validates :description, presence: true
	validates :ingredients, presence: true
	validates :cooking_instructions, presence: true
	validates :prep_time, presence: true
	validates :cook_time, presence: true

end
