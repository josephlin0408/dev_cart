class Admin::PostCategoriesController < Admin::BaseController
	def index
		
	end

	def new
		@post_category = PostCategory.new
	end

	def create
		@post_category = PostCategory.new(post_categories_params)
		if @post_category.save
			redirect_to new_admin_post_category_path
		else
			render :new
		end
	end

	private
	def post_categories_params
		params.require(:post_category).permit(:name)
	end
end