class AddImageFields < ActiveRecord::Migration
  def self.up
  	remove_column :categories, :banner_image
  	add_attachment :categories, :banner_image
  	remove_column :tags, :banner_image
  	add_attachment :tags, :banner_image
  	remove_column :series, :banner_image
  	add_attachment :series, :banner_image
  end

  def self.down
    remove_attachment :categories, :banner_image_image
    add_column :categories, :banner_image_image, :integer
    remove_attachment :tags, :banner_image_image
    add_column :tags, :banner_image_image, :integer
    remove_attachment :series, :banner_image_image
    add_column :series, :banner_image_image, :integer
  end
end
