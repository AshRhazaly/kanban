class PostsController < ApplicationController
  before_action :set_postparams, only: [:show, :edit, :destroy, :update]
  def index
    @post = Post.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
      flash[:notice] = "You've Kan-ed your ban."
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
    @post.destroy
    redirect_to posts_path
    flash[:notice] = "You've deleted your Kanban"
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
