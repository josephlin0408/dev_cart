class PostsController < ApplicationController
	def index
		@posts = Post.post_filter(params[:tag])
		@post_find_status = Post.where(:status => "1")
	end

	def show
		@post = Post.find(params[:id])
	end

end