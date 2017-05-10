class TagsController < ApplicationController
	def index
		if params[:search]
			@tags = Tag.search(params[:search]).order("created_at DESC")

		else
			@tags = Tag.all.order('posts_count DESC')

		end
	end
end