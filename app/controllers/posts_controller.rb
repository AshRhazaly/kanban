class PostsController < ApplicationController
  before_action :set_postparams, only[:show, :edit, :destroy, :update]
  def index
    @post = Post.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def new
    @post = Post.new
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private
  
  def set_postparams
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title)
  end
end
