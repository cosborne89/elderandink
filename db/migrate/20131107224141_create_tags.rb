class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :title
      t.integer :banner_image
      t.text :description
      t.string :post_ids

      t.timestamps
    end
  end
end
