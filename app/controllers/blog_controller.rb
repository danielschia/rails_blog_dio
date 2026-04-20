class BlogController < ApplicationController
  def index
    @posts = Post.where('publication_date <= ?', Time.current).order(publication_date: :desc)
  end
end
