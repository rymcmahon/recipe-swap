class RemoveUserIdFkFromComments < ActiveRecord::Migration
  def change
  	remove_foreign_key :comments, name: :fk_rails_03de2dc08c
  end
end
