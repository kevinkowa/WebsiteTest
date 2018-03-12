class StaticPagesController < ApplicationController

	layout 'standard'

	# GET /
	def index
	end

	def about
	end
	# GET /search?
	def search
		@title = params[:search]
		if @title == nil
			@title = ""
		end
		@posts = Post.where("title like ?", "#{@title}%")
	end

  # GET /lessons
	def lessons
		@posts = Post.all
	end

	# GET /lessons/1
	def show
		title = params[:title]
		@post = Post.find_by title: title
	end

end
