class Post < ActiveRecord::Base
	belongs_to :category
	has_many :comments
	belongs_to :series
	has_and_belongs_to_many :tags

	accepts_nested_attributes_for :comments

	default_scope where(:published => true)
	scope :unpublished, -> { where(published: false) }
end
