class RemoveForeignKeyAgain < ActiveRecord::Migration
  def change
  	remove_foreign_key :comments, name: :fk_rails_fa790d5166
  	remove_foreign_key :recipes, name: :fk_rails_9606fce865
  end

end
