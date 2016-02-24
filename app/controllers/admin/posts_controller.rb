class Admin::PostsController < ApplicationController
  layout 'admin'

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path
    else
      render :back
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @tag = @post.all_tags

    if @post.update_attributes(post_params)
      redirect_to admin_posts_path
    else
      render :back
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :all_tags)
  end
end
