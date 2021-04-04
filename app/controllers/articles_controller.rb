class ArticlesController < ApplicationController
  def index
    @articles = Article.last(10)
    respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
  end
end
