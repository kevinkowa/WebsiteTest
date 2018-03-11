class StaticPagesController < ApplicationController

	layout 'standard'
	def index
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
