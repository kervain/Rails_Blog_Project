class TagsController < ApplicationController

	def index
		@tags = Tag.all

	end

	def show
		@tag = Tag.find(params[:id])

	end

	def destroy

    	@tag = Tag.find(params[:id])
    	@tag.destroy
    	flash.notice = "Tag '#{@tag.title}' Deleted!"

    	redirect_to articles_path

    end
end
