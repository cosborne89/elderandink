class AddAttachmentTitleImageToPosts < ActiveRecord::Migration
  def self.up
  	remove_column :posts, :title_image
  	add_attachment :posts, :title_image
  end

  def self.down
    remove_attachment :posts, :title_image
    add_column :posts, :title_image, :integer
  end
end
