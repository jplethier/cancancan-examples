class TasksController < ApplicationController
  def index; end

  def show; end

  def new; end

  def create
    if @task.save
      redirect_to tasks_path, notice: "Tarefa salva com sucesso"
    else
      render :new
    end
  end

  def edit; end

  def update
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :user_id)
  end
end
