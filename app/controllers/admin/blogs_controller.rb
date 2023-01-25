class Admin::BlogsController < ApplicationController
  before_action :if_not_admin
  before_action :set_blog, only: [:edit, :update, :destroy]
  
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:notice] = "Success!"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    
    @blog.update(blog_update)
    if @blog.valid?
      flash[:notice] = "Success!"
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    
    @blog.destroy
    redirect_to root_path
  end


  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def blog_params
    params.permit(:title, :genre_id, :image, :text, :description).merge(user_id: current_user.id)
  end

  def blog_update
    params.require(:blog).permit(:title, :genre_id, :image, :text, :description).merge(user_id: current_user.id)
  end

end


