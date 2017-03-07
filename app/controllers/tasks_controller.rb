class TasksController < ApplicationController
  before_action :set_tasks, only: [:index,:create,:show,:edit,:update,:destroy]

  def index
    @tasks = @post.tasks.all
    respond_to do |format|
      format.json {render :json => @tasks.to_json}
    end
  end

  def new
    @task = @post.tasks.build
  end

  def create
    @task = @post.tasks.build(tasks_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @post, notice: 'Task was successfully created.' }
        format.js   {}
        format.json { render json: @task, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @task = @post.tasks.find(params[:id])
    @task.destroy
    respond_to do |format|
      format.html { redirect_to @post, notice: "Task was deleted."}
      format.json {head :no_content}
      format.js {}
    end
  end

  private
  def set_tasks
    @post = Post.find(params[:post_id])
  end

  def tasks_params
    params.require(:task).permit(:content)
  end
end
