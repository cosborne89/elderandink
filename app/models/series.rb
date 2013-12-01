class Series < ActiveRecord::Base
	has_many :posts
	has_attached_file :banner_image
end
