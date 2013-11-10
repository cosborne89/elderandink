class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.date :published_date
      t.integer :title_image
      t.string :tag_ids
      t.integer :category_id
      t.string :comment_ids
      t.integer :series_id

      t.timestamps
    end
  end
end
