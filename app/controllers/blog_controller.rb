class BlogController < ApplicationController
  layout 'application_blank'

  def index
    @posts = Post.where('publication_date <= ?', Time.current).order(publication_date: :desc).first
  end
end
