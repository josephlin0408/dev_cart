class Admin::PostsController < Admin::BaseController
	def index
		@posts = Post.post_filter(params[:tag])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to new_admin_post_path
		else
			render :new
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to admin_posts_url
		else
			render :edit
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to admin_posts_url
	end

	private
	def post_params
		params.require(:post).permit(:title, :content, :image, :status, :tag_list)
	end

end