class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @user = Post.find(params[:id])
    @post = Post.new(post_params)
    @post.user = @user
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name, :content, :likes_number)
  end
end
