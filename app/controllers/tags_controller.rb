class TagsController < ApplicationController
	def index
		if params[:search]
			@tags = Tag.search(params[:search]).order('posts_count DESC')

		else
			@tags = Tag.all.order('posts_count DESC')
			render 'tags/all'

		end
	end
end
