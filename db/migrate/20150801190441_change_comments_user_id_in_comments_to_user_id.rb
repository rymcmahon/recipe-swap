class ChangeCommentsUserIdInCommentsToUserId < ActiveRecord::Migration
  def change
  	rename_column :comments, :comment_user_id, :user_id
  end
end
