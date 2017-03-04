class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def create
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def destroy
  end

  def update
  end
end
