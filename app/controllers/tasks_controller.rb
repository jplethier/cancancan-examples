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
    if @task.update(task_params)
      redirect_to task_path(@task), notice: "Tarefa alterada com sucesso"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy

    redirect_to tasks_path, notice: "Tarefa excluída com sucesso"
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :user_id)
  end
end
