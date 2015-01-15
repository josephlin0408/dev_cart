class Post < ActiveRecord::Base
	mount_uploader :image, ImageUploader 

	acts_as_taggable
	acts_as_taggable_on :tags

	validates :title, presence: 'true'

	scope :post_filter, ->(tag){ tagged_with(tag) if tag.present? }
end
