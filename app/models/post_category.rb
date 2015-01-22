class PostCategory < ActiveRecord::Base
	#欄位驗證
	validates :name, presence: 'true'

	#資料表關聯
	has_and_belongs_to_many :posts
	
end
