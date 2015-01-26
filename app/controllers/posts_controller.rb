class PostsController < ApplicationController
	def index
		@post_find_status = Post.where(:status => "1", :draft => "0")
	end

	def show
		@post = Post.find(params[:id])
	end

end