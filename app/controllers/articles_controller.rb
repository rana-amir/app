class ArticlesController < ApplicationController
	def new
		@new=Article.new
	end
	def create
		@new=Article.new(param_article)
		@new.save
		redirect_to articles_path

	end
	def index
		@articles=Article.all
	end
end


def param_article
	params.require(@article).permits(:title, :description)
end
