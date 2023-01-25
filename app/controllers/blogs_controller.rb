class BlogsController < ApplicationController
  

  def index
    @blogs = Blog.page(params[:page]).per(10)
  end

  def show
    @blog = Blog.find(params[:id])

    rescue ActiveRecord::RecordNotFound , NoMethodError => e
      redirect_to root_path
    rescue => e
      redirect_to root_path
  end

  def genre
    @blog = Blog.find_by(genre_id: params[:id])
    @blogs = Blog.where(genre_id: params[:id]).order(created_at: :desc)
  end

  def owner
  end

  def search
    @blogs = Blog.search(params[:keyword])
  end


end
