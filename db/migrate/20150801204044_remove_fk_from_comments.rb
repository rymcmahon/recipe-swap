class RemoveFkFromComments < ActiveRecord::Migration
  def change
  	remove_foreign_key :comments, name: :fk_rails_fa790d5166
  end
end
