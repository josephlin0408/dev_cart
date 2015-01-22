class Post < ActiveRecord::Base
	#圖片
	mount_uploader :image, ImageUploader 

	#標籤
	acts_as_taggable
	acts_as_taggable_on :tags
	scope :post_filter, ->(tag){ tagged_with(tag) if tag.present? }	

	#欄位條件
	validates :title, presence: 'true'

	#資料表關聯
	has_and_belongs_to_many :post_categories
	

end
