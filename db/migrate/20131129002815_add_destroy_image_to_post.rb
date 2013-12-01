class AddDestroyImageToPost < ActiveRecord::Migration
  def change
    add_column :posts, :destroy_image, :boolean
  end
end
