class MakeUserIdFk < ActiveRecord::Migration
  def change
  	add_foreign_key :comments, :users, on_update: :cascade
  end
end
