class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
			@post = Post.find(params[:id])
	end

	def update
			# raise params.inspect
			@post = Post.find(params[:id])
			@post.update(title: params[:article][:title], description: params[:article][:description])

			redirect_to post_path(@post)
	end

end
