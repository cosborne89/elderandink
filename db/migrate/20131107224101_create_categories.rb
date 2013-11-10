class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :banner_image
      t.text :description
      t.string :post_ids

      t.timestamps
    end
  end
end
