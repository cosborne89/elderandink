class Category < ActiveRecord::Base
	has_many :posts
	has_attached_file :banner_image

	default_scope order('"order" ASC')
end
