class TasksController < ApplicationController
  before_action :set_tasks, only: [:create,:show,:edit,:update,:destroy]

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_tasks
    @post = Post.find(params[:post_id])
  end

  def tasks_params
    params.require(:task).permit(:content)
  end
end
