class Admin::PostCategoriesController < Admin::BaseController
	def index
		@post_categories = PostCategory.all
		@post_category = PostCategory.new

		@post_category_count = Post.where(:category => @post_categories.name).count
	end

	def new
		@post_category = PostCategory.new
	end

	def create
		@post_category = PostCategory.new(post_categories_params)
		if @post_category.save
			redirect_to admin_post_categories_path
		else
			render :new
		end
	end

	def edit
		@post_category = PostCategory.find(params[:id])
	end

	def update
		@post_category = PostCategory.find(params[:id])
		if @post_category.update(post_categories_params)
			redirect_to admin_post_categories_path
		else
			render :edit
		end
	end

	private
	def post_categories_params
		params.require(:post_category).permit(:name)
	end
end