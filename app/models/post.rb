class Post < ActiveRecord::Base
	belongs_to :category
	has_many :comments
	belongs_to :series
	has_and_belongs_to_many :tags

	accepts_nested_attributes_for :comments

	default_scope { where(published: true) }
	scope :unpublished, -> { where(published: false) }

	validates_presence_of :category_id
	has_attached_file :title_image, styles: {thumb: "100x100#"}

	before_save :destroy_image_check

	def destroy_image_check
		if self.destroy_image == 1
			self.title_image.clear
		end
	end

	def previous_post
	  self.class.first(:conditions => ["id < ?", id], :order => "id desc")
	end

	def next_post
	  self.class.first(:conditions => ["id > ?", id], :order => "id asc")
	end
end
